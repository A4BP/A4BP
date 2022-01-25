parsing
parseParameters
	| parameters attributes totalAttributes |

	parameters := OrderedCollection new.
	totalAttributes := 0.
	[(readStream
		skipSeparators;
		peekFor: $;)
			and: [
				(readStream
					skipSeparators;
					atEnd) not]]
		whileTrue: [| attribute value hasValue |
			"attributes are case insensitive and are converted
			to lowercase for convenience"
			attribute := self nextToken asLowercase.
			(hasValue :=
				readStream
					skipSeparators;
					peekFor: $=)
				ifTrue: [value := self nextTokenOrQuotedString]
				ifFalse: [value := ''].
			(attribute notEmpty
				or: [hasValue])
				ifTrue: [
					"only initialize if needed"
					((attributes ifNil: [attributes := Set new])
						add: attribute;
						size) > totalAttributes
						ifTrue: [
							parameters addLast: attribute -> value.
							totalAttributes := totalAttributes + 1]]].
	^ parameters.