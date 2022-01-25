resolving
bindWithBpProcess: bPProcess
	inputVariable ifNotEmpty: [ (bPProcess getBPVariableNamed: inputVariable) addRelation: self ].
	outputVariable ifNotEmpty: [ (bPProcess getBPVariableNamed: outputVariable) addRelation: self ].
	partnerLink
		ifNotEmpty: [ 
			| bpPlnk |
			bpPlnk := bPProcess getBPPartnerLinkName: partnerLink.
			bpPlnk ifNotNil:[
				bpPlnk addRelation: self.
				bpPartnerLink := bpPlnk
			]. 
		]