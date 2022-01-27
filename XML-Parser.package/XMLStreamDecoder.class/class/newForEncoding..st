instance creation
newForEncoding: anEncoding
	^ (self streamDecoderCache
		at: anEncoding
		ifAbsentPut: [self findStreamDecoderForEncoding: anEncoding])
			ifNotNil: [:decoderClass | decoderClass new encodingName: anEncoding]