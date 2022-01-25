accessing
charset
	^ self
		parameterAt: 'charset'
		ifAbsent: [self defaultCharset]