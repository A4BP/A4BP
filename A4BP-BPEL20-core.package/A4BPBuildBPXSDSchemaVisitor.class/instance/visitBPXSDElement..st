visitor
visitBPXSDElement: aModel
	self visitBPXSDObject: aModel.
	^ aBPObj addElement: aModel