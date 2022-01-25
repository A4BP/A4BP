getset
getRelationAtName: pName
	| rel |
	[ rel := self lstRelations at: pName ]
		on: KeyNotFound
		do: [ ^ A4BPEmptyObj instance ].
	^ rel