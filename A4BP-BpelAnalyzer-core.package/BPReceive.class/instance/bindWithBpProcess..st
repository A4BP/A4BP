as yet unclassified
bindWithBpProcess: bPProcess
	inputVariable ifNotEmpty: [ (bPProcess getBPVariableNamed: inputVariable) addInvoke: self ].
	outputVariable ifNotEmpty: [ (bPProcess getBPVariableNamed: outputVariable) addInvoke: self ].
	partnerLink
		ifNotEmpty: [ 
			| bpPlnk |
			bpPlnk := bPProcess getBPPartnerLinkName: partnerLink.
			bpPlnk addRelation: self.
			bpPartnerLink := bpPlnk ]