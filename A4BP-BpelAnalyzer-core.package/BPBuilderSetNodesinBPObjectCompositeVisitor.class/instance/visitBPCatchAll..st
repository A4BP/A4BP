visitor
visitBPCatchAll: aBPCatchAll
	aBPObj addFaultHandler: aBPCatchAll.
	^ 0