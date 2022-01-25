dsl
messageFlows
	| lst |
	lst := OrderedCollection new.
	self collaborations do: [ :c | lst addAll: c value messageFlows ].
	^ lst