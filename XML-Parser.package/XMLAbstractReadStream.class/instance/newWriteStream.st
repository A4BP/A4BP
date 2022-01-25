instance creation
newWriteStream
	^ (self writeStreamCollectionClass new: 128) writeStream