instance creation
nonDecodingOnIfBinaryOrExternal: aStream
	^ aStream isXMLBinaryOrExternalStream
		ifTrue: [
			self
				on: aStream
				streamConverter: XMLStreamConverter null]
		ifFalse: [nil]