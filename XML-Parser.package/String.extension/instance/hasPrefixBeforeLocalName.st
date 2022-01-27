*XML-Parser
hasPrefixBeforeLocalName
	^ (self
		indexOf: $:
		startingAt: 2) > 0