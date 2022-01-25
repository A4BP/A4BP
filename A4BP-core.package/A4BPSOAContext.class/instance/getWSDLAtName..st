getset
getWSDLAtName: anName
	|lst|
	lst := (lstElements select:[:e | e aName = anName and: e isWSDL. ]) values.
	lst size < 1 ifTrue:[ ^ A4BPEmptyObj instance].
	^  lst first.
