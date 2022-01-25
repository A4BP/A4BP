accessing
contentLength: anInteger
	anInteger
		ifNil: [
			self
				removeHeaderAt: 'Content-Length'
				ifAbsent: []]
		ifNotNil: [
			self
				headerAt: 'Content-Length'
				put: anInteger asString]