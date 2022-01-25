build-relations
buildRelationsBpXSDSchema: aBPXSDSchema
	types ~= nil
		ifTrue: [ types buildRelationsBpXSDSchema: aBPXSDSchema ]