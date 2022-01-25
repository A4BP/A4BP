testing
isChunked
	^ (self
		headerAt: 'Transfer-Encoding'
		ifAbsent: [^ false]) beginsWith: 'chunked'