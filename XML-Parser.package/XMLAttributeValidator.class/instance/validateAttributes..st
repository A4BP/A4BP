validating
validateAttributes: anAttributeDictionary
	self
		validateAttributeDefaultIn: anAttributeDictionary;
		validateAttributeValue:
			(anAttributeDictionary
				at: self attribute
				ifAbsent: [^ self])