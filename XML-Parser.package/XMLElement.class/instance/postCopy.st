copying
postCopy
	super postCopy.

	namespaceScope
		ifNotNil: [namespaceScope := namespaceScope copy].
	attributes
		ifNotNil: [attributes := attributes deepCopyWithObserver: self].