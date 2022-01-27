validating
validateAttributeDefaultIn: anAttributeDictionary
	(anAttributeDictionary
		at: self attribute
		ifAbsentPut: [self defaultValue]) = self defaultValue
		ifFalse: [self errorNonDefaultValue]