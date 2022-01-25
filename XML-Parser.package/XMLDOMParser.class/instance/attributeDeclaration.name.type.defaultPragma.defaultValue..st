handling - declaration
attributeDeclaration: anElementName name: anAttributeName type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	self topNodeAdd:
		(self nodeFactory attributeDeclarationClass
			element: anElementName
			attribute: anAttributeName
			type: aType
			defaultPragma: aDefaultPragma
			defaultValue: aDefaultValue)