*XML-Parser
isQualifiedName: aQualifiedName orLocalName: aLocalName
	"optimized"
	^ self = aQualifiedName
		or: [(aQualifiedName size > aLocalName size)
			and: [self = aLocalName]]