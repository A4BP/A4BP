actions
nodes
	| col returnCol |
	returnCol := OrderedCollection new.
	col := parser childNodes.
	col do: [ :n | returnCol add: (BPXMLParserPeti createBaseOn: n) ].
	^ returnCol