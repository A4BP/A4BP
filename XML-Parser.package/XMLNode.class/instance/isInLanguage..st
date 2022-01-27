testing
isInLanguage: aLanguage
	^ self hasParent
		and: [self parent isInLanguage: aLanguage]