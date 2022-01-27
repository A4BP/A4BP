handling - declarations
generalEntityDeclaration: aName publicID: aPublicID systemID: aSystemID ndata: aNotation
	self topNode addNode:
		(self nodeFactory generalEntityDeclarationClass
			name: aName
			publicID: aPublicID
			systemID: aSystemID
			ndata: aNotation)