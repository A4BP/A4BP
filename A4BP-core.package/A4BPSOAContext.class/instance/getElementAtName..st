getset
getElementAtName: anName
	|lst|
	lst := (lstElements select:[:e | e aName = anName ]) values.
	lst size < 1 ifTrue:[ ^ A4BPEmptyObj instance].
	^  lst first.