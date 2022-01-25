dsl
inFlows
	"Show a list of elements to be have flow with the element"

	| lst |
	lst := OrderedCollection new.
	self incomings do: [ :e | lst addAll: e inFlows ].
	^ lst