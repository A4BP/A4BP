build-relations
findDefType: aDefType
	| col |
	col := OrderedCollection new.
	col addAll: lstMessages.
	types ifNotNil:[col add: types].
	col
		do: [ :m | 
			| def |
			def := m findDefType: aDefType.
			def isBPEmtyObj
				ifFalse: [ ^ def ] ].
	^ A4BPEmptyObj instance