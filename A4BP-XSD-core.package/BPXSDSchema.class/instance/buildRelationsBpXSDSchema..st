build-relations
buildRelationsBpXSDSchema: aBPXSDSchema
	| matchPattern |
	self isInternalReference 
		ifTrue: [ 
			matchPattern := '*' , aBPXSDSchema fileName , '*'.
			(matchPattern match: self schemaLocation)
				ifTrue: [ parent addRelation: aBPXSDSchema ] ]