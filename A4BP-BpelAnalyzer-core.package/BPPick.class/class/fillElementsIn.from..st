parser
fillElementsIn: aBPPick from: document
	| bpElement refTag typeName nodes |
	nodes := document nodes.
	nodes
		do: [ :docAtr | 
			typeName := docAtr name.
			refTag := BPBPELParserTagsXMLRef getClassBPBaseOnTypeName: typeName.
			bpElement := refTag objclass fromXMLDescription: docAtr in: aBPPick.
		]