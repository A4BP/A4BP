*XML-Parser
isNamespaceAttributeName
	^ (self beginsWith: 'xmlns')
		and: [self size = 5
			or: [(self at: 6) == $:]]