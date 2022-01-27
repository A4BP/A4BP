accessing
nextNode
	^ self parent ifNotNil: [:node | node nodeAfter: self]