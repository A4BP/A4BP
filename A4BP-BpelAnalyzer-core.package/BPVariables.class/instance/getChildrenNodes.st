getset
getChildrenNodes
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: lstVariables.
	^ nodes