accessing
document
	^ self parent ifNotNil: [:node | node document]