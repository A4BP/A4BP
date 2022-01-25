getset
aName
	aName size > 0 ifTrue:[ ^ aName].
	^ self class bpmn20Name 