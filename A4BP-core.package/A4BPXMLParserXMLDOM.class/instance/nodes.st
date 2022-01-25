actions
nodes
	|col returnCol|
	returnCol := OrderedCollection new.
	col:= parser nodes.
	col do:[ :n| returnCol add: (A4BPXMLParserXMLDOM createBaseOn:n) ].
	^ returnCol.