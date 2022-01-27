instance creation
on: aStream streamDecoder: aDecoder
	^ (self new on: aStream)
		streamDecoder: aDecoder