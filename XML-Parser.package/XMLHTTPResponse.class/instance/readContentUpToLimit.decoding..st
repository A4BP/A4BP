reading
readContentUpToLimit: aMaxSize decoding: aBoolean
	self content:
		(self newContentReader
			readUpToLimit: aMaxSize
			decoding: aBoolean)