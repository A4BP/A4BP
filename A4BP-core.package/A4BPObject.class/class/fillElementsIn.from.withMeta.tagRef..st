doForAllChield
fillElementsIn: obj from: document withMeta: metaDocument  tagRef: aTagRef
	document nodes
		do: [ :n | 
			n isStringValue
				ifTrue: [ obj value: n string ];
				ifFalse: [ 
						| nName nType refTag bpElement |
						nName := n localName.
						nType := metaDocument getTypeName: nName.
						refTag := aTagRef getClassBPBaseOnTypeName: nType.
						bpElement := refTag objclass fromXMLDescription: n withMeta: metaDocument.
						obj setUsingReflection: nName obj: bpElement.
						obj setUsingReflection: nName obj: bpElement withMeta: metaDocument
						] ].
	^ obj