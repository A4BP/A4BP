reflection
setUsingReflection: var obj: obj withMeta: metaDocument
	| subTitutionGroup |
	subTitutionGroup := metaDocument getSubstitutionGroupName: obj localName.
	self class
		instanceVariableNamesDo: [ :v | 
			| ref |
			"(obj localName = 'FloatingParameter' and: v = 'parameterValue') ifTrue:[ self halt ]."
			ref := metaDocument getRefName: v asString.
			subTitutionGroup = ref
				ifTrue: [ self setUsingReflection: v obj: obj ] ]