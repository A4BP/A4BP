handling - declaration
generalEntityDeclaration: aName publicID: aPublicID systemID: aSystemID ndata: aNotationName
	self topNodeAdd:
		(self nodeFactory generalEntityDeclarationClass
			name: aName
			publicID: aPublicID
			systemID: aSystemID
			ndata: aNotationName)