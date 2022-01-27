private
afterAdding: aNode at: anIndex
	observer ifNotNil: [observer addedNode: aNode]