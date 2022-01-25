basic
basicCanDecompressCompression: aCompressionScheme
	^ self compressionScheme = aCompressionScheme
		and: [self isSupportedImplementation]