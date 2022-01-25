build-relations
buildRelationsBpWsdls: aRelation
	lstVariables do: [ :v | v buildRelationsBpWsdls: aRelation ]