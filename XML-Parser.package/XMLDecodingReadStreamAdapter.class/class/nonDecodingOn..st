instance creation
nonDecodingOn: aStream
	^ self
		on: aStream
		streamConverter: XMLStreamConverter null