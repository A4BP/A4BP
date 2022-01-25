private
allNamespaceScopesRemapPrefix: aPrefix from: anOldURIOrNil to: aNewURI
	(self namespaceScope
		prefixMappingAt: aPrefix
		ifAbsent: [anOldURIOrNil]) = anOldURIOrNil
		ifTrue: [
			self namespaceScope
				mapPrefix: aPrefix
				to: aNewURI.
			"we only need to check the attributes if we've remapped an
			existing, non-default namespace"
			(anOldURIOrNil notNil
				and: [aPrefix size > 0])
				ifTrue: [self validateNamespacePrefixesOfAttributes].
			self elementsDo: [:each |
				each
					allNamespaceScopesRemapPrefix: aPrefix
					from: anOldURIOrNil
					to: aNewURI]]