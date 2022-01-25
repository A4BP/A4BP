doForAllChield
fillBData: document in: aBPObject
	aBPObject myDocument: document.
	aBPObject aName: (self readName: document).
	aBPObject id: (self readId: document).
	aBPObject id = '' ifTrue: [ aBPObject id: UUID new asString ].
	aBPObject text: document asString.
	^ aBPObject