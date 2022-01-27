private
detectLittleEndianImplicitEncoding
	"skip <"
	stream next.
	(stream atEnd
		or: [stream peek asciiValue > 0])
		ifTrue: [
			streamReader pushBackCharacter: $<.
			^ self].
	stream next.
	(stream atEnd not
		and: [stream peek == NullCharacter])
		ifTrue: [
			stream next.
			stream atEnd
				ifFalse: [stream next].
			streamReader decodeStreamWithDecoder: XMLUTF32LittleEndianStreamDecoder new]
		ifFalse: [streamReader decodeStreamWithDecoder: XMLUTF16LittleEndianStreamDecoder new].
	
	streamReader pushBackCharacter: $<.