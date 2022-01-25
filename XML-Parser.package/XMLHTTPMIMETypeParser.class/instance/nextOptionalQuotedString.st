private
nextOptionalQuotedString
	| isEscaping nextChar |

	(readStream
		skipSeparators;
		peekFor: $")
		ifFalse: [^ nil].

	writeStream
		reset;
		nextPut: $".
	isEscaping := false.
	[(nextChar := readStream next) isNil
		or: [isEscaping not
			and: [nextChar == $"]]]
		whileFalse: [
			isEscaping :=
				isEscaping not
					and: [nextChar == $\].
			writeStream nextPut: nextChar].
	^ writeStream
		nextPut: $";
		contents.