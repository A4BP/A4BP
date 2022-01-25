reading
rawReadWithLength: aContentLength upToLimit: aMaxSize
	| socketStream rawContentWriteStream |

	(socketStream := response webClientResponse stream) binary.
	rawContentWriteStream :=
		(ByteArray new:
			(aContentLength
				ifNil: [aMaxSize
					ifNil: [4096]])) writeStream.
	response webClientResponse
		streamFrom: socketStream
		to: rawContentWriteStream
		size: aContentLength
		progress:
			((aContentLength isNil
				and: [aMaxSize notNil])
				ifTrue: [
					[:ignored :total |
						total > aMaxSize
							ifTrue: [self errorContentLimitExceeded]]]
				ifFalse: [nil]).
	^ rawContentWriteStream contents.