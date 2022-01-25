getset
getPartnerLinkName: aPlnkName
	^ partnerLinks detect: [ :v | v name = aPlnkName ].