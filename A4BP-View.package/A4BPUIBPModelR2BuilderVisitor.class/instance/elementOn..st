shape
elementOn: aModel
	^ RSObject new
		model: aModel;
		addShape: (aModel accept: self);
		yourself