writing
writeStreamCollectionClass
	self isBinary
		ifTrue: [^ ByteArray]
		ifFalse: [^ String]