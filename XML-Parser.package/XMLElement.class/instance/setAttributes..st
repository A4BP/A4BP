initialization
setAttributes: aDictionaryOrArray
	self hasAttributes
		ifTrue: [self attributeNodes removeAll].
	aDictionaryOrArray associationsDo: [:each |
		self attributeNodes
			addName: each key
			value: each value].