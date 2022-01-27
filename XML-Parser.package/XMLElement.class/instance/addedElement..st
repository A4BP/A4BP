notifying
addedElement: anElement
	super addedElement: anElement.
	(self hasNamespaces
		and: [self namespaceScope ~= anElement namespaceScope])
		ifTrue: [anElement inheritNamespacesFrom: self]