finder
getSubstitutionGroupName: anName
	| type |
	[ type := (parser allElementsDetect: [ :n | (n attributeAt: 'name') = anName ]) attributeAt: 'substitutionGroup' ]
		on: Error
		do: [ type := anName ].
	'' = type ifTrue:[type := anName].
	^ type