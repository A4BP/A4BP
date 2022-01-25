private
addedElement: anElement
	(self hasNamespaces
		and: [self namespaceScope ~= anElement namespaceScope])
		ifTrue: [
			anElement allElementsDo: [:each |
				each namespaceScope inheritMappingsFrom: self namespaceScope]]