private
afterAdding: aNode at: anIndex
	observer ifNotNil: [
		aNode isElement
			ifTrue: [observer addedElement: aNode]
			ifFalse: [observer addedNode: aNode]]