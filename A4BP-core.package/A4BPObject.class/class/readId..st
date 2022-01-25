doForAllChield
readId: document
	^ [ document attributeAt: 'id' ]
		on: MessageNotUnderstood
		do: [ ^ document asString ]