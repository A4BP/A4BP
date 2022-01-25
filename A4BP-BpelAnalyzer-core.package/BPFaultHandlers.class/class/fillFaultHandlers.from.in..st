parser
fillFaultHandlers: bpFaultHandlers from: document in: aBPObject
	| bpElement refTag typeName nodes |
	nodes := document nodes.
	nodes
		do: [ :docAtr | 
			typeName := docAtr name.
			refTag := BPBPELParserTagsXMLRef getClassBPBaseOnTypeName:  typeName.
			refTag = A4BPEmptyObj instance
				ifFalse: [ 
					bpElement := refTag objclass fromXMLDescription: docAtr in: aBPObject.
					bpFaultHandlers addFaultHandler: bpElement.
					aBPObject addFaultHandler: bpFaultHandlers
				] 
		]