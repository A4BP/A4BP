encodings
decodeStreamWithDecoder: aStreamDecoder
	(stream respondsTo: #streamDecoder:)
		ifTrue: [stream streamDecoder: aStreamDecoder]
		ifFalse: [
			stream :=
				XMLDecodingReadStreamAdapter
					on: stream
					streamDecoder: aStreamDecoder]