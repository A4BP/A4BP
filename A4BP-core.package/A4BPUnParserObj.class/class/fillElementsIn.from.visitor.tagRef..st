builder
fillElementsIn: aBPObject from: document visitor: visitor tagRef: aTagRef
	| bpElement refTag typeName nodes |
	[ 
	nodes := document nodes nodes
		do: [ :docAtr | 
			typeName := docAtr name.
			refTag := aTagRef getClassBPBaseOnTypeName: typeName.
			bpElement := refTag objclass fromXMLDescription: docAtr in: aBPObject.
			bpElement accept: visitor ] ]
		on: Error
		do: [ 
			typeName := document name.
			refTag := aTagRef getClassBPBaseOnTypeName: typeName.
			bpElement := refTag objclass endfromXMLDescription: document in: aBPObject.
			bpElement accept: visitor ]