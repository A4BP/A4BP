visitor
visitBPXSDSimpleType: aModel
	self visitBPXSDObject: aModel.
	^ aBPObj addSimpleType: aModel