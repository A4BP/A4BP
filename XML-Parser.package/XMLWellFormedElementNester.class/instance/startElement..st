checking
startElement: anElementName
	rootElement
		ifNil: [rootElement := anElementName]
		ifNotNil: [
			(self openElements isEmpty
				and: [self hasExternalRootElement not])
				ifTrue: [self errorMultipleRoots]].

	super startElement: anElementName.