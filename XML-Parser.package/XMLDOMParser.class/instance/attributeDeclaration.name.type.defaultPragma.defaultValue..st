handling - declarations
attributeDeclaration: anElement name: aName type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	self topNode addNode:
		(self nodeFactory attributeDeclarationClass
			element: anElement
			attribute: aName
			type: aType
			defaultPragma: aDefaultPragma
			defaultValue: aDefaultValue)