getset
allNodes
	|lst|
	lst:= OrderedCollection new.
	self lstElements do:[ :e | lst addAll: e allNodes]. 
	^ lst