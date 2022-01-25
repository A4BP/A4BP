build-relations
buildMeRelations
	| nameElement bpGType |
	"if the code dont find the type is probably that the definitions is primitive element like xsd:String"
	type = A4BPEmptyObj instance
		ifTrue: [ 
			(stType ~= nil or: (stType ~= ''))
				ifTrue: [ 
					bpGType := BPGenericType newGenericType: self.
					nameElement := mySchema findElementByType: bpGType.
					nameElement ifNotNil: [ type := nameElement ] ] ].
	