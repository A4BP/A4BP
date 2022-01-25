build-relations
buildRelationsBpPartnerLink: aRelBpPartnerLink
	"If I have a rel with bpPnlk finish"
	(aRelBpPartnerLink haveLazyRefLikeAt: self)
		ifFalse: [ ^ self ].
	self addRelation: aRelBpPartnerLink bpProcess.
	self addRelation: aRelBpPartnerLink.
	aRelBpPartnerLink buildRelationsBpWsdls: self