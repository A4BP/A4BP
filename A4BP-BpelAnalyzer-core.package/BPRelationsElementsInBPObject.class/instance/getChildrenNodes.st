getset
getChildrenNodes
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: lstRelations.
	^ nodes