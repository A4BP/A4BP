parser
readStringOrEmpty: document at: tag
	^ [ document attributeAt: tag ]
		on: Error
		do: [ ^ '' ]