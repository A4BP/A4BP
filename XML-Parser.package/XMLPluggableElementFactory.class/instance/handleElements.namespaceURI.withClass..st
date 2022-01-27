element handling
handleElements: anElementNameCollection namespaceURI: aNamespaceURI withClass: aClass
	anElementNameCollection do: [:each |
		self
			handleElement: each
			namespaceURI: aNamespaceURI
			withClass: aClass]