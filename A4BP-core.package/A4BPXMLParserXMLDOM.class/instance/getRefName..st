finder
getRefName: anName
	| type |
	[ 
	| element |
	element := parser
		allElementsDetect: [ :n | 
			| e |
			e := nil.
			[ e := n attributeAt: 'name' ]
				on: Error
				do: [  ].
			e = anName ].
	type := element attributeAt: 'ref' ]
		on: Error
		do: [ type := anName ].
	type = ''
		ifTrue: [ type := anName ].
	^ type