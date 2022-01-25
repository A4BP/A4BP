getset
allChildrens
	|lst|
	lst:=OrderedCollection new.
	lst addAll:self childrens.
	self childrens do:[ :e| lst addAll: e allNodes ].
	^ lst.