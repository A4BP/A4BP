actions
allElementsNamed: key
	| col returnCol |
	returnCol := OrderedCollection new.
	col := parser findXPath: key.
	col children do: [ :n | returnCol add: (A4BPXMLParserPeti createBaseOn: n) ].
	^ returnCol