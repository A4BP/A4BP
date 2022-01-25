parser
readInt: document at: tag
	^ [ (document attributeAt: tag) asInteger ]
		on: MessageNotUnderstood
		do: [ ^ 0 ]