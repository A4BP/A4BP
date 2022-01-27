parsing
parse
	contentModel = 'ANY'
		ifTrue: [^ XMLAnyElementValidator element: element]
		ifFalse: [^ XMLEmptyElementValidator element: element]