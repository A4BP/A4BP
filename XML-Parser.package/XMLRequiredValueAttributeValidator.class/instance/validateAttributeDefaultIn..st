validating
validateAttributeDefaultIn: anAttributeDictionary
	(anAttributeDictionary includesKey: self attribute)
		ifFalse: [self errorRequiredAttributeMissing]