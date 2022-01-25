getset
getChildrenNodes
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: self lstActivities.
	nodes add: variables.
	nodes add: partnerLinks.
	nodes add: faultHandlers.
	nodes add: bpRelations.
	nodes add: bpRelationsProcessInstrumented.
	^ nodes