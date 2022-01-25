defaults
writeStreamCollectionClass
	self isBinary
		ifTrue: [^ ByteArray]
		ifFalse: [^ String]