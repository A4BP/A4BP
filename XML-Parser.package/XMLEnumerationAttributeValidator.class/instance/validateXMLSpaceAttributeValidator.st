validating
validateXMLSpaceAttributeValidator
	(self allowedValues size <= 2
		and: [self allowedValues allSatisfy: [:each |
			(each = 'preserve') or: [each = 'default']]])
		ifFalse: [self errorInvalidXMLSpaceAttributeValidator]