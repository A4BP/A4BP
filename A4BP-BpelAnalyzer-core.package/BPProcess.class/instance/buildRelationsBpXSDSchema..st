build-relations
buildRelationsBpXSDSchema: aBPXSDSchema
	| size |
	size := (nsNameSpaces select: [ :ns | ns = aBPXSDSchema targetNamespace ]) size.
	size > 0 ifTrue:[ bpRelations addRelation: aBPXSDSchema].