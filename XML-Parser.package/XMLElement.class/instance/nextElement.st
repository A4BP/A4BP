accessing
nextElement
	^ self parent ifNotNil: [:node | node elementAfter: self]