tokenizing - dtd
nextAttributeEntityType
	self expectNextAll: 'ENTIT'.
	streamReader peek == $Y
		ifFalse: [
			^ self
				expectNextAll: 'ENTITIES'
				startingAt: 6 "'ENTIT' size + 1"].
	streamReader next.
	^ 'ENTITY'.