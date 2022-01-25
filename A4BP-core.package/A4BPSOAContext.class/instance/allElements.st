all
allElements
	|lst|
	lst:= OrderedCollection new.
	lstElements do:[ :e | lst addAll: e childrens]. 
	^ lst