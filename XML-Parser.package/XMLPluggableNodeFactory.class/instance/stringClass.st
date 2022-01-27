accessing
stringClass
	^ stringClass ifNil: [stringClass := super stringClass]