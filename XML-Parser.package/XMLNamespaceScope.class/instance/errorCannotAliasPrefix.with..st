private
errorCannotAliasPrefix: aFirstPrefix with: aSecondPrefix
	aSecondPrefix isEmpty
		ifTrue: [
			XMLNamespaceException
				formatSignal:
					'Cannot use the "{1}" namespace URI as a ',
					'default namespace URI'
				with: aFirstPrefix]
		ifFalse: [
			XMLNamespaceException
				formatSignal:
					'Cannot alias the "{1}" namespace URI ',
					'with the "{2}" prefix'
				with: aFirstPrefix
				with: aSecondPrefix]