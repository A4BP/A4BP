getset
getChildrenNodes
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: self lstBPOnMessage.
	^ nodes