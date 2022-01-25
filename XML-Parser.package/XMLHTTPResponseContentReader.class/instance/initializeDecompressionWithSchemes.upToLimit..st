initialization
initializeDecompressionWithSchemes: aCompressionSchemeSequence upToLimit: aMaxSize
	isDecompressing := true.
	aCompressionSchemeSequence reverseDo: [:each |
		contentReadStream :=
			XMLHTTPDecompressingReadStreamAdapterFactory
				on: contentReadStream
				compression: each].
	aMaxSize
		ifNotNil: [self limitContentReadStreamUpToLimit: aMaxSize].