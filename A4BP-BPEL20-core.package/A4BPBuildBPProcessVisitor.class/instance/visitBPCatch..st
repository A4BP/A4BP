visitor
visitBPCatch: aBPCatch
	aBPObj addFaultHandler: aBPCatch.
	^ 0