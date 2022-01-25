dsl
lanes
	|lst|
	lst := OrderedCollection new.
	self process do:[:p| lst addAll: p value lanes].
	^ lst