visitor
visitBPXSDSchema: aBPXSDSchema
	aBPXSDSchema targetNamespace = defType nameSpace
		ifTrue: [ ^ returnElement := aBPXSDSchema findDefType: defType].
	^ returnElement := A4BPEmptyObj instance.