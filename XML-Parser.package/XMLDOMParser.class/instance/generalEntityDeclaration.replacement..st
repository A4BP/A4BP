handling - declarations
generalEntityDeclaration: aName replacement: aReplacement
	self topNode addNode:
		(self nodeFactory generalEntityDeclarationClass
			name: aName
			replacement: aReplacement)