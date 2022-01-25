relations
buildRelationsBpWsdls: aRelBpWsdl
	"If i have my wsdl relation i dont care other wsdl"
	bpwsdl = A4BPEmptyObj instance
		ifFalse: [ ^ self ].	
	"If my process have the relation finish"
	(A4BPEmptyObj instance equals:(bpProcess getRelationAt: aRelBpWsdl))
		ifFalse: [ ^ self ].
	(aRelBpWsdl haveLazyRefLikeAt: self)
		ifTrue: [ 
			bpwsdl := aRelBpWsdl.
			self buildRelationsWithMyBpProcess.
			bpProcess addRelation: aRelBpWsdl.
			bpwsdl buildRelationsBpPartnerLink: self ]