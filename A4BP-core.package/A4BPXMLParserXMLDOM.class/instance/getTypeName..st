finder
getTypeName: anName
	| type |
	[ type := (parser allElementsDetect: [ :n | (n attributeAt: 'name') = anName ]) attributeAt: 'type' ]
		on: Error
		do: [ type := anName ].
	'' = type ifTrue:[type := anName].
	^ type