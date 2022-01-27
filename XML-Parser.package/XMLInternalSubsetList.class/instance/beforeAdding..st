private
beforeAdding: aNode
	observer ifNotNil: [observer addingNode: aNode]