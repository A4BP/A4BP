visitor
visitBPActivity: aBPActivity
	aBPObj addActivity: aBPActivity.
	aBPActivity bindWithBpProcess: aBPObj.
	^ 0