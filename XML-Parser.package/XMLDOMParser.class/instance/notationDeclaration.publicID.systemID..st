handling - declaration
notationDeclaration: aName publicID: aPublicID systemID: aSystemID
	self topNodeAdd:
		(self nodeFactory notationDeclarationClass
			name: aName
			publicID: aPublicID
			systemID: aSystemID)