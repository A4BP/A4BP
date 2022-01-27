validating
validateWith: aValidator
	self hasChildren
		ifTrue: [self nodesDo: [:each | each validateWith: aValidator]]