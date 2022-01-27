accessing
classForElement: aQualifiedName namespaceURI: aURI
	| prefix |

	^ self
		classForElement: aQualifiedName
		prefix: (prefix := aQualifiedName prefixBeforeLocalName)
		uri: aURI
		localName: (aQualifiedName localNameAfterPrefix: prefix)