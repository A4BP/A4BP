private
attributeValueAt: aName put: aValue
	| i |

	(i := self indexOfAttributeValueAt: aName) > 0
		ifTrue: [(self at: i) value: aValue]
		ifFalse: [
			"use #addToCopyLast: since we know it's not already in the collection"
			self addToCopyLast:
				(self attributeClass
					name: aName
					value: aValue)].
	^ aValue.