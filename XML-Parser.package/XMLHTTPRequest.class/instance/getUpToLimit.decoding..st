resolving
getUpToLimit: aMaxSize decoding: aBoolean
	self method: 'GET'.
	^ (self
		resolveUpToLimit: aMaxSize
		decoding: aBoolean) content