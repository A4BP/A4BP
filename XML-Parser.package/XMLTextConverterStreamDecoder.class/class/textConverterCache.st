private
textConverterCache
	^ textConverterCache
		ifNil: [textConverterCache := XMLKeyValueCache maxSize: 32]