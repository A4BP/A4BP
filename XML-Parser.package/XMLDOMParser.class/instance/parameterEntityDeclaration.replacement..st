handling - declaration
parameterEntityDeclaration: aName replacement: aReplacement
	self topNodeAdd:
		(self nodeFactory parameterEntityDeclarationClass
			name: aName
			replacement: aReplacement)