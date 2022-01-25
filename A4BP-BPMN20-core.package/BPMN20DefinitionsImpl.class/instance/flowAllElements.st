dsl
flowAllElements
	|lst|
	lst := OrderedCollection new.
	self process do:[:p| lst addAll: p value flowElements].
	^ lst