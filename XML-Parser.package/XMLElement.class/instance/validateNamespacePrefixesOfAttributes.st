private
validateNamespacePrefixesOfAttributes
	(self usesNamespaces
		and: [self hasAttributes])
		ifTrue: [
			self namespaceScope validatePrefixesOfAttributes:
				self attributeNames]