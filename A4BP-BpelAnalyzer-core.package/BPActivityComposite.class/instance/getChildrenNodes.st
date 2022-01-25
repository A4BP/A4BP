getset
getChildrenNodes
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: self lstActivities.
	^ nodes