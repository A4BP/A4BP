metrics
numberOfAllCatchs
	|number|
	number:= faultHandlers numberOfCatchs.
	self allScopes do:[:act | number:= number + act faultHandlers numberOfCatchs].
	^ number.