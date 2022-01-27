tokenizing - dtd
nextAttributeEntityType
	streamReader next.
	self expectNextAll: 'NTIT'.
	streamReader peek == $Y
		ifTrue: [
			streamReader next.
			^ 'ENTITY'].
	self expectNextAll: 'IES'.
	^ 'ENTITIES'.