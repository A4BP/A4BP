dsl
outFlows
	"Show a list of elements to be have flow with the element"

	| lst |
	lst := OrderedCollection new.
	lst addAll: (self myRoot messageFlows select: [ :m | 
		|b|
		b:=false.
		m sourceRef ifNotNil:[
		b := m sourceRef id = self id.
			].
		b]).
	self outgoings do: [ :e | lst addAll: e outFlows ].
	^ lst