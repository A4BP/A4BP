visitor
visitBPCopy: aBPCopy
	aBPObj addAction: aBPCopy.
	^ self visitBPObject: aBPCopy