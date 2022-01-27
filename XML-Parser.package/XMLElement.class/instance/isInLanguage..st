testing
isInLanguage: aLanguage
	^ (self
		attributeNodeAt: 'xml:lang'
		ifAbsent: [
			^ self hasParent
				and: [self parent isInLanguage: aLanguage]])
			hasLanguage: aLanguage