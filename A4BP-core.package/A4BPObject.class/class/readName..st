doForAllChield
readName: document
	^ [ document attributeAt: 'name' ]
		on: MessageNotUnderstood
		do: [ ^ document asString ]