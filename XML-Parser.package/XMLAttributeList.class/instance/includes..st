testing
includes: aNode
	^ aNode isAttribute
		and: [
			(self attributesByName
				at: aNode name
				ifAbsent: [^ false]) = aNode]