accessing
defaultNamespace
	^ prefixMappings
		ifNil: ['']
		ifNotNil: [
			prefixMappings
				at: ''
				ifAbsent: ['']]