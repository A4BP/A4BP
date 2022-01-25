private
attributeValueAt: aName ifAbsentPut: aBlock
	^ self
		attributeValueAt: aName
		ifAbsent: [
			"use #addToCopyLast:, since we know it's not in the collection"
			(self addToCopyLast:
				(self attributeClass
					name: aName
					value: aBlock value)) value]