parser
readBoolean: document at: tag
	^ [ (document attributeAt: tag) = 'true']
		on: MessageNotUnderstood
		do: [ ^ false ]