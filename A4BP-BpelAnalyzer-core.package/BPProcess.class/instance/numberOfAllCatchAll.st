metrics
numberOfAllCatchAll
	|number|
	number:= faultHandlers numberOfCatchAll.
	self allScopes do:[:act | number:= number + act faultHandlers numberOfCatchAll].
	^ number.