dsl
flows
	"Show a list of elements to be have flow with the element"
	| lst |
	lst := OrderedCollection new.
	lst addAll: self inFlows.
	lst addAll: self outFlows.
	^ lst