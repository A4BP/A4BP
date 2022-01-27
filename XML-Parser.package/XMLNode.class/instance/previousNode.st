accessing
previousNode
	^ self parent ifNotNil: [:node | node nodeBefore: self]