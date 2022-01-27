testing
isNamedAny: aNameCollection
	"Does the receiver's qualified or local name match any of the names supplied as the argument?'"
	^ aNameCollection
		includesQualifiedName: self name
		orLocalName: self localName