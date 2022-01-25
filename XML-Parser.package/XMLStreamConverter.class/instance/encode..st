convenience
encode: aString
	^ (self encodingOn: (ByteArray new: aString size) writeStream)
		nextPutAll: aString;
		contents