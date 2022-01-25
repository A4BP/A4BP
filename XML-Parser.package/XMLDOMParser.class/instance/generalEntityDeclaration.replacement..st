handling - declaration
generalEntityDeclaration: aName replacement: aReplacement
	self topNodeAdd:
		(self nodeFactory generalEntityDeclarationClass
			name: aName
			replacement: aReplacement)