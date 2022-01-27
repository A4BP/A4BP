private
afterRemoving: aNode
	aNode isElement
		ifTrue: [self uncacheElement: aNode].
	super afterRemoving: aNode.