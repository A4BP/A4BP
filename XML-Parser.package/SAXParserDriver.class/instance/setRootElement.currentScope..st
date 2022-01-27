accessing
setRootElement: anElementName currentScope: aNamespaceScope
	self elementNester setExternalRootElement: anElementName.
	self usesNamespaces
		ifTrue: [self scopeAllocator currentScope: aNamespaceScope].