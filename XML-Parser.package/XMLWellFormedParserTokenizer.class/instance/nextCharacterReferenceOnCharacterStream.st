tokenizing
nextCharacterReferenceOnCharacterStream
	"returns the character written to 'characterStream' or $& if
	it wasn't replaced"
	| codePoint |

	"skip #"
	streamReader next.
	(state isContentState
		and: [driver replacesContentEntityReferences not])
		ifTrue: [
			nameStream reset.
			(codePoint := self nextCharacterValueLiteralPrintedOn: nameStream)
				ifNil: [self errorExpectedIntegerCharacterReference].
			(self characterFromCodePoint: codePoint)
				ifNil: [self errorInvalidCharacterReferenceCodePoint: codePoint].
			self nextCharacterReferenceTerminator.
			characterStream
				nextPutAll: '&#';
				nextPutAll: nameStream contents;
				nextPut: $;.
			^ $&]
		ifFalse: [| character |
			(codePoint := self nextCharacterValueLiteral)
				ifNil: [self errorExpectedIntegerCharacterReference].
			(character := self characterFromCodePoint: codePoint)
				ifNil: [self errorInvalidCharacterReferenceCodePoint: codePoint].
			self nextCharacterReferenceTerminator.
			characterStream nextPut: character.
			^ character].