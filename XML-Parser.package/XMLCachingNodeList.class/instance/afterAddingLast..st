private
afterAddingLast: aNode
	aNode isElement
		ifTrue: [self cacheElementAddedLast: aNode].
	super afterAddingLast: aNode.