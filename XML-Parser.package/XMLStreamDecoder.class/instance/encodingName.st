accessing
encodingName
	^ encodingName ifNil: [encodingName := self class defaultEncodingName]