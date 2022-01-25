build-relations
showDef
	"this message find the variable definition"
	(xsdType = nil or: xsdType = A4BPEmptyObj instance )
		ifTrue: [ xsdType := myProcess findDefBPVariableType: (BPGenericType newGenericType: self) ].
	^ xsdType