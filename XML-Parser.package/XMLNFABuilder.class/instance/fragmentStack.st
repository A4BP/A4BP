accessing
fragmentStack
	^ fragmentStack ifNil: [fragmentStack := OrderedCollection new]