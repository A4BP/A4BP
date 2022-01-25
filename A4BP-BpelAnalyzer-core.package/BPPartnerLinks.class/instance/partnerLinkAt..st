find
partnerLinkAt: aPlnkName
	^ [ lstPartnerLinks detect: [ :v | v aName = aPlnkName ] ]
		on: NotFound
		do: [ ^ A4BPEmptyObj instance ]