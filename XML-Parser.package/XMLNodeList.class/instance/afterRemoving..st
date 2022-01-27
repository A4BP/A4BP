private
afterRemoving: aNode
	observer ifNotNil: [
		aNode isElement
			ifTrue: [observer removedElement: aNode]
			ifFalse: [observer removedNode: aNode]]