dsl
lanes
	| lst |
	lst := OrderedCollection new.
	self laneSets do: [ :ls | lst addAll: ls lanes ].
	lst size = 0
		ifTrue: [ lst add: (BPMN20LaneImpl new aName: self aName) ].
	^ lst