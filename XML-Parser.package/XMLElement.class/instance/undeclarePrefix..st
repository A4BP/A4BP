namespacing
undeclarePrefix: aPrefix
	self ensureUsesNamespaces.
	self
		allNamespaceScopesUnmapPrefix: aPrefix
		mappedTo:
			(self namespaceScope
				prefixMappingAt: aPrefix
				ifAbsent: [^ self]).