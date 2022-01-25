getset
isARelationableActivity
	^ (bpPartnerLink = A4BPEmptyObj instance) not and: (bpPartnerLink bpwsdl = nil) not