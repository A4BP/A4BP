private
detectLittleEndianUTF16BOMOrUTF32BOM
	(self
		detectBOM: UTF32LittleEndianBOM
		forDecoderClass: XMLUTF32LittleEndianStreamDecoder)
		ifNotNil: [:remainder |
			remainder = UTF16LittleEndianBOM
				ifTrue: [
					streamReader decodeStreamWithDecoder:
						XMLUTF16LittleEndianStreamDecoder new]
				ifFalse: [streamReader pushBack: remainder]]