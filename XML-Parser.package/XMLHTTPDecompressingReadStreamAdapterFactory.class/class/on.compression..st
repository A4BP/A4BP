instance creation
on: aReadStream compression: aCompressionScheme
	^ (self classForCompression: aCompressionScheme)
		ifNil: [self errorUnsupportedCompression: aCompressionScheme]
		ifNotNil: [:classForCompression |
			classForCompression on: aReadStream]