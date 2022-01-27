instance creation
collection: aCollection maxSize: anInteger
	^ self basicNew initialize
		setCollection: aCollection
		maxSize: anInteger