validating
validateAttributeDefaultIn: anAttributeDictionary
	((anAttributeDictionary at: self attribute ifAbsent: ['']) isEmpty 
		and: [self defaultValue notEmpty])
		ifTrue: [anAttributeDictionary at: self attribute put: self defaultValue]