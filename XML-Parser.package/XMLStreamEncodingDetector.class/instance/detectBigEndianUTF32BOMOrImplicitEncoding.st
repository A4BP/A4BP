private
detectBigEndianUTF32BOMOrImplicitEncoding
	| remainder |

	(remainder :=
		self
			detectBOM: UTF32BigEndianBOM
			forDecoderClass: XMLUTF32BigEndianStreamDecoder)
		ifNil: [^ self].
	(remainder allSatisfy: [:each | each == NullCharacter])
		ifFalse: [
			streamReader pushBack: remainder.
			^ self].

	(remainder size = 1
		and: [stream atEnd not
			and: [stream peek == $<]])
		ifTrue: [
			stream next.
			streamReader
				decodeStreamWithDecoder: XMLUTF16BigEndianStreamDecoder new;
				pushBackCharacter: $<.
			^ self].
	(remainder size = 2
		and: [stream atEnd not
			and: [stream peek == NullCharacter]])
		ifTrue: [
			stream next.
			(stream atEnd not
				and: [stream peek == $<])
				ifTrue: [ 
					stream next.
					streamReader
						decodeStreamWithDecoder: XMLUTF32BigEndianStreamDecoder new;
						pushBackCharacter: $<.
					^ self].
			remainder := remainder copyWith: NullCharacter].

	streamReader pushBack: remainder.