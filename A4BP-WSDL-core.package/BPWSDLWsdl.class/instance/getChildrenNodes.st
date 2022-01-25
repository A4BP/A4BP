getset
getChildrenNodes
	| nodes |
	nodes := OrderedCollection new.
	nodes add: bpRelations.
	^ nodes