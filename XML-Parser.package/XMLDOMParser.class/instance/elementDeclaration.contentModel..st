handling - declaration
elementDeclaration: anElementName contentModel: aContentModel
	self topNodeAdd:
		(self nodeFactory elementDeclarationClass
			element: anElementName
			contentModel: aContentModel)