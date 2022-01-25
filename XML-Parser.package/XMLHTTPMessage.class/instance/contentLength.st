accessing
contentLength
	^ XMLIntegerReader
		readFrom:
			(self
				headerAt: 'Content-Length'
				ifAbsent: [^ nil]) readStream
		withBase: 10