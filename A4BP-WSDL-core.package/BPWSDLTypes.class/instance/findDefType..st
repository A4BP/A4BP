build-relations
findDefType: aDefType
	lstSchemas
		do: [ :schema | 
			| def |
			def := schema findDefType: aDefType.
			def isBPEmtyObj
				ifFalse: [ ^ def ] ].
	^ A4BPEmptyObj instance