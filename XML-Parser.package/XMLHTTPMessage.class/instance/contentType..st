accessing
contentType: aMIMETypeOrString
	aMIMETypeOrString
		ifNil: [
			self
				removeHeaderAt: 'Content-Type'
				ifAbsent: []]
		ifNotNil: [
			self
				headerAt: 'Content-Type'
				put: aMIMETypeOrString asString]