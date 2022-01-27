private
afterAddingLast: aNode
	observer ifNotNil: [
		aNode isElement
			ifTrue: [observer addedElement: aNode]
			ifFalse: [observer addedNode: aNode]]