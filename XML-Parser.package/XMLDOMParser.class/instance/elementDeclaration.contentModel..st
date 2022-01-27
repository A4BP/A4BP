handling - declarations
elementDeclaration: aName contentModel: aContentModel
	self topNode addNode:
		(self nodeFactory elementDeclarationClass
			element: aName
			contentModel: aContentModel)