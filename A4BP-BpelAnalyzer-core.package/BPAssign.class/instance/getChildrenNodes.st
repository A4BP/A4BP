getset
getChildrenNodes
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: self lstActions.
	^ nodes