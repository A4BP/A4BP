private
validateAttributes
	self usesNamespaces
		ifTrue: [
			self namespaceScope
				validateAttributePrefixes: self attributeNodes attributesByName]