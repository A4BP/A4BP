parser
fillElementsIn: aBPObj from: document
	aBPObj messageType: (self readString: document at: 'messageType').
	aBPObj simpleType: (self readString: document at: 'type').
	aBPObj elementType: (self readString: document at: 'element').