handling - declaration
parameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	self topNodeAdd:
		(self nodeFactory parameterEntityDeclarationClass
			name: aName
			publicID: aPublicID
			systemID: aSystemID)