factory
getClassBPBaseOnTypeName: aTypeName
	[ ^ self lstOfBPTagClass at: aTypeName ]
		on: KeyNotFound
		do: [ ^ self lstOfBPTagClass at: A4BPUnParserObj name ]