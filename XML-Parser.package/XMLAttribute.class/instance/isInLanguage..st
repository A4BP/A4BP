testing
isInLanguage: aLanguage
	self name = 'xml:lang'
		ifTrue: [^ self hasLanguage: aLanguage]
		ifFalse: [^ super isInLanguage: aLanguage]