visitor
visitBPXSDComplexType: aModel
	self visitBPXSDObject: aModel.
	^ aBPObj addComplexType: aModel