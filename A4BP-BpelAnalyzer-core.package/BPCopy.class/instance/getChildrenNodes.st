getset
getChildrenNodes
	| nodes |
	nodes := OrderedCollection new.
	nodes add: bpFrom.
	nodes add: bpTo.
	^ nodes