dsl
deepinFlows
	"Show a list of elements to be have flow with the element"
	| lst |
	lst := OrderedCollection new.
	self incomings values do:[ :e | lst addAll: e deepinFlows].
	^ lst