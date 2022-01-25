metrics
numberOfCatchs
	^ (lstFaultHandlers select: [ :v | v class = BPCatch ]) size