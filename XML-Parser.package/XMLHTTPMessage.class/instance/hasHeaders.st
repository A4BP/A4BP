testing
hasHeaders
	self headerKeysDo: [:key | ^ true].
	^ false.