encodings
convertFromEncoding: anEncodingName
	| streamDecoder |

	"encoding declarations for the default encoding are ignored on ReadStreams,
	which are assumed to be on strings that don't need decoding"
	streamDecoder := XMLStreamDecoder newForEncoding: anEncodingName.
	(streamDecoder == nil
		or: [(stream isKindOf: ReadStream)
			and: [streamDecoder isDefaultStreamDecoder]])
		ifFalse: [self decodeStreamWithDecoder: streamDecoder].