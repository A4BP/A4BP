private
externalSubsetParserOn: aStringOrStream documentURI: aURI
	^ self saxHandler parserClass
		driver:
			(DTDExternalSubsetParserDriver
				saxDriver: self
				documentURI: aURI)
		on: aStringOrStream