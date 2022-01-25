streaming
undecodedContentReadStreamUpToEnd
	^ (isDecompressing
		or: [limitedContentReadStream notNil])
		ifTrue: [self contentReadStreamUpToEnd]
		ifFalse: [rawContent]