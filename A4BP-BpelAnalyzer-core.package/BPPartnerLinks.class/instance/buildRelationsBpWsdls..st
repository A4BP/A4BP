build-relations
buildRelationsBpWsdls: aRelation
	lstPartnerLinks do: [ :plnk | plnk buildRelationsBpWsdls: aRelation ]