private
detectBigEndianUTF16BOM
	(self
		detectBOM: UTF16BigEndianBOM
		forDecoderClass: XMLUTF16BigEndianStreamDecoder)
		ifNotNil: [:remainder | streamReader pushBack: remainder]