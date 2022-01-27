private
inheritNamespacesFrom: anElement
	self allElementsDo: [:each |
		each namespaceScope inheritMappingsFrom:
			anElement namespaceScope]