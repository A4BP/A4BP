parser
fillPartnertLinks: bpPartnertLinks from: document in: parent
	| bpElement refTag typeName nodes |
	nodes := document nodes.
	nodes
		do: [ :docAtr | 
			typeName := docAtr name trim.
			typeName = '' ifFalse:[
				refTag := BPBPELParserTagsXMLRef getClassBPBaseOnTypeName: typeName.
				bpElement := refTag objclass fromXMLDescription: docAtr in: bpPartnertLinks.
				bpPartnertLinks addPartnerLink: bpElement
			]. 
		]