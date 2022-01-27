validating
validateAttributeValue: aValue
	self
		listValuesIn: aValue
		do: [:each |
			self unparsedEntityValidator
				validateEntityReference: each
				inAttribute: self attribute]