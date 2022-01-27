notifying
addingNode: aNode
	aNode hasParent
		ifTrue: [self errorAddingNodeWithParent]