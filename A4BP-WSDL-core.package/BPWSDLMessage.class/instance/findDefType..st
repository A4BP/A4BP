build-relations
findDefType: aDef
	aDef element = aName
		ifTrue: [ 
			| newDef |
			newDef :=BPGenericType newGenericType: bpWsdlPart.
			^ myWSDL findDefTypeInXSD: newDef ].
	^ A4BPEmptyObj instance.