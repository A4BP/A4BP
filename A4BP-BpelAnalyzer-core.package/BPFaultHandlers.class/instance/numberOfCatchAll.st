metrics
numberOfCatchAll
	^ (lstFaultHandlers select: [ :v | v class = BPCatchAll ]) size