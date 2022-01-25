getset
parent: aModel
	parent
		ifNil: [ 
			parent := aModel.
			parent addChildren: self ]