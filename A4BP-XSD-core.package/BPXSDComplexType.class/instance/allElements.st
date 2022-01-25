all
allElements
	| lst |
	lst := OrderedCollection new.
	lst addAll: xsdSequence allElements.
	^ lst