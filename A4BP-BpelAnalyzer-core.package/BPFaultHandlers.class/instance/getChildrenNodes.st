getset
getChildrenNodes
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: lstFaultHandlers .
	^ nodes