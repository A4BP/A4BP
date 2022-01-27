copying
postCopy
	super postCopy.

	nodes
		ifNotNil: [nodes := nodes deepCopyWithObserver: self].