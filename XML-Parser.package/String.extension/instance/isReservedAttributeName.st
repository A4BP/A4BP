*XML-Parser
isReservedAttributeName
	^ self size > 4
		and: [self beginsWith: 'xml:']