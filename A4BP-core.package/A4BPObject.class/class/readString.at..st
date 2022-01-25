parser
readString: document at: tag
	^ [ document attributeAt: tag ]
		on: Error
		do: [ ^ document asString ]