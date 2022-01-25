accessing
requiresSchema: aBoolean
	(requiresSchema := aBoolean)
		ifTrue: [self isValidating: true]