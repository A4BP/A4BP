private
textConverterForEncoding: anEncoding
	^ self textConverterCache
		at: anEncoding
		ifAbsentPut: [
			(Smalltalk at: #TextConverter)
				defaultConverterClassForEncoding: anEncoding asLowercase]