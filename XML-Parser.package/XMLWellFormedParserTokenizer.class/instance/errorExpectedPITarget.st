errors
errorExpectedPITarget
	self errorExpected:
		(state isXMLDeclarationState
			ifTrue: [
				'"xml" to start an <?xml ...?> declaration or a ',
				'processing instruction target']
			ifFalse: ['processing instruction target'])