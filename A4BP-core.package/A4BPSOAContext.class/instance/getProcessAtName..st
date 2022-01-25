getset
getProcessAtName: anName
	|lst|
	lst := (lstElements select:[:e | e aName = anName and: e isProcess. ]) values.
	lst size < 1 ifTrue:[ ^ A4BPEmptyObj instance].
	^  lst first.
