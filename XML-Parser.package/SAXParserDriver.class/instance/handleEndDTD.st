handling - dtd
handleEndDTD
	(self resolvesExternalEntities
		and: [self externalSubsetURI notEmpty
			and: [self isValidating or: [self isStandalone not]]])
		ifTrue: [self parseExternalSubset].

	self saxHandler
		doctypeDefinition: self doctypeDefinition;
		endDTD.