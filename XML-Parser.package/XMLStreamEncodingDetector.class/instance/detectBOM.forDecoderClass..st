private
detectBOM: aByteOrderMark forDecoderClass: aClass
	stream next.
	2 to: aByteOrderMark size do: [:i |
		(stream atEnd not
			and: [stream peek == (aByteOrderMark at: i)])
			ifFalse: [^ aByteOrderMark copyFrom: 1 to: i - 1].
		stream next].
	streamReader decodeStreamWithDecoder: aClass new.
	^ nil.