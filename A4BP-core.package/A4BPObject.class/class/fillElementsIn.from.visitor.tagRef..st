doForAllChield
fillElementsIn: obj from: document visitor: visitor tagRef: aTagRef
	document nodes do: [ :n | 
		n isStringValue
		ifTrue: [ obj value: n string ];
		ifFalse: [ 
			|refTag bpElement localName|
			localName := n localName.
			"localName = 'userTask' ifTrue:[self halt.]."
			refTag := aTagRef getClassBPBaseOnTypeName: localName.
			bpElement := refTag objclass fromXMLDescription: n in: obj.
			bpElement accept: visitor 
		]
	]