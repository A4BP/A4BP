accessing
previousElement
	^ self parent ifNotNil: [:node | node elementBefore: self]