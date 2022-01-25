visitor
visitBPWSDLwsdl: aBPWSDLwsdl
	aBPWSDLwsdl targetNamespace = defType nameSpace
		ifTrue: [ ^ returnElement := aBPWSDLwsdl findDefType: defType].
	^ returnElement := A4BPEmptyObj instance.