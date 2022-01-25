private
attributeValueAt: aName put: aValue
	(self attributeNodesByName
		at: aName
		ifAbsent: [
			"use #addToCopyLast: since we know it's not already in the collection"
			self addToCopyLast:
				(self attributeClass
					name: aName
					value: aValue).
			^ aValue]) value: aValue.
	^ aValue.