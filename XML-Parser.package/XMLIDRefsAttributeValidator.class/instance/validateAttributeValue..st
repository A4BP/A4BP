validating
validateAttributeValue: aValue
	self
		listValuesIn: aValue
		do: [:each |
			self elementIDValidator
				validateIDReference: each
				inAttribute: self attribute]