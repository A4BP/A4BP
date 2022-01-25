actions
allElementsNamed: key
	|col returnCol|
	returnCol := OrderedCollection new.
	col:= parser allElementsNamed: key.
	col do:[ :n| returnCol add: (A4BPXMLParserXMLDOM createBaseOn:n) ].
	^ returnCol.