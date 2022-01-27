private
detectUTF8BOM
	(self
		detectBOM: UTF8BOM
		forDecoderClass: XMLUTF8StreamDecoder)
		ifNotNil: [:remainder | streamReader pushBack: remainder]