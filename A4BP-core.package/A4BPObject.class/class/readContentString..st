doForAllChield
readContentString: document
	^ [ document contentString ]
		on: MessageNotUnderstood
		do: [ ^ document asString ]