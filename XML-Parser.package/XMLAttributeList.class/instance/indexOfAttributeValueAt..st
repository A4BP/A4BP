private
indexOfAttributeValueAt: aName
	"Returns the index of the attribute value with the exact name of aName"

	"this needs to be fast, for #attributeValueAt:... methods, so
	use #to:do: for speed"
	1 to: collection size do: [:i | | node |
		(node := collection at: i) name = aName
			ifTrue: [^ i]].
	^ 0.