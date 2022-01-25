namespacing
declarePrefix: aPrefix uri: aURI
	self ensureUsesNamespaces.
	self
		allNamespaceScopesRemapPrefix: aPrefix
		from:
			(self namespaceScope
				prefixMappingAt: aPrefix
				ifAbsent: [nil])
		to: aURI.