handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName attributes: aDictionary
	self pushElement:
		((self nodeFactory
			classForElement: aQualifiedName
			prefix: aPrefix
			uri: aURI
			localName: aLocalName) new
				setQualifiedName: aQualifiedName
				localName: aLocalName
				attributes: aDictionary)