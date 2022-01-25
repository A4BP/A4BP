action
findDef: aDef In: aCollection
	defType := aDef.
	aCollection
		do: [ :el | 
			el accept: self.
			returnElement isBPEmtyObj ifFalse: [ ^ self returnElement ] ].
	^ self returnElement