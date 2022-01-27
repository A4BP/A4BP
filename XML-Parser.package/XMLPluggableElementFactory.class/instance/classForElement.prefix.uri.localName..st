accessing
classForElement: aName prefix: aPrefix uri: aURI localName: aLocalName
	^ (self classForElement: aName uri: aURI)
		ifNil: [
			aPrefix isEmpty
				ifTrue: [self elementClass]
				ifFalse: [
					(self classForElement: aLocalName uri: aURI)
						ifNil: [self elementClass]]]