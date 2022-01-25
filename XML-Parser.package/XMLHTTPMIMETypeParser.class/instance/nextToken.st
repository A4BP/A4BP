private
nextToken
	readStream skipSeparators.
	^ self nextDelimitedByAny: TokenDelimiters.
