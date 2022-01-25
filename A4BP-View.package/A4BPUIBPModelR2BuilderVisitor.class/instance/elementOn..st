shape
elementOn: aModel
	^ RTElement new
		model: aModel;
		addShape: (aModel accept: self);
		yourself