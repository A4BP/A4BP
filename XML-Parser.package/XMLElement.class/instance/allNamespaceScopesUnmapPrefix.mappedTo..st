private
allNamespaceScopesUnmapPrefix: aPrefix mappedTo: aURI
	(self namespaceScope
		includesPrefix: aPrefix
		mappedTo: aURI)
		ifTrue: [
			self namespaceScope unmapPrefix: aPrefix.
			self
				validateNamespacePrefix;
				validateNamespacePrefixesOfAttributes.
			self elementsDo: [:each |
				each
					allNamespaceScopesUnmapPrefix: aPrefix
					mappedTo: aURI]]