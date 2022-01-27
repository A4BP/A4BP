tokenizing
nextCharacterReferenceOnWriteStream
	"returns true if writeStream is written to, false otherwise"
	| codePoint character |

	"skip #"
	streamReader next.
	codePoint :=
		(streamReader nextInteger
			ifNil: [self errorExpected: 'integer']).
	self expectNext: $;.

	character :=
		(self characterFromCodePoint: codePoint)
			ifNil: [self errorInvalidCodePoint: codePoint].
	(context isContentContext
		and: [driver replacesContentEntityReferences not])
		ifTrue: [
			writeStream
				nextPutAll: '&#';
				nextPutAll: codePoint asString;
				nextPut: $;.
			^ true].
	writeStream nextPut: character.
	^ true.