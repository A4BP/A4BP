as yet unclassified
childrenOf: rootPackage on: organizer
	rootPackage ifNotNil: [ ^ rootPackage getChildrenNodes ].
	^ A4BPEmptyObj instance getChildrenNodes