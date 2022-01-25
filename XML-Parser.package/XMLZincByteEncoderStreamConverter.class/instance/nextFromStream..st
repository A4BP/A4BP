decoding
nextFromStream: aStream
	"ZnByteEncoder does not check for #atEnd before sending #next"
	aStream atEnd
		ifTrue: [^ nil]
		ifFalse: [| nextChar |
			nextChar :=
				zincByteEncoder nextFromStream:
					(stringReadStreamAdapter on: aStream).
			stringReadStreamAdapter on: NullReadStream.
			^ nextChar]