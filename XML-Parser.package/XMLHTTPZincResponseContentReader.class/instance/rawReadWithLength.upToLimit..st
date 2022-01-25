reading
rawReadWithLength: aContentLength upToLimit: aMaxSize
	^ [| entityStream |
		(entityStream := response zincResponse entity stream) binary.
		ZnUtils
			readUpToEnd: entityStream
			limit: aMaxSize]
		on: ZnEntityTooLarge
		do: [:error | self errorContentLimitExceeded]