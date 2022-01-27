private
toHyphenatedName: aString
	| nameStream hyphenatedStream previousChar nextChar |

	nameStream := aString readStream.
	hyphenatedStream := (String new: nameStream size) writeStream.
	[nameStream atEnd]
		whileFalse: [
			((nextChar := nameStream next) isUppercase
				and: [previousChar notNil and: [previousChar isLowercase]])
				ifTrue: [hyphenatedStream nextPut: $-].
			hyphenatedStream nextPut: nextChar asLowercase.
			previousChar := nextChar].
	^ hyphenatedStream contents.