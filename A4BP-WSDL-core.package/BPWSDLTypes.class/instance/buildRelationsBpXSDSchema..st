build-relations
buildRelationsBpXSDSchema: aBPXSDSchema
	lstSchemas do: [ :xsd | xsd buildRelationsBpXSDSchema: aBPXSDSchema ]