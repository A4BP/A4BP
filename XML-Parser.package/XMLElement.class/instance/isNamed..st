testing
isNamed: aName
	"Does the receiver's qualified or local name match the argument?'"
	^ aName
		isQualifiedName: self name
		orLocalName: self localName