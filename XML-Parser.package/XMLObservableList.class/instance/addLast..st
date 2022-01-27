adding
addLast: anObject
	self beforeAdding: anObject.
	collection addLast: anObject.
	self afterAddingLast: anObject.
	^ anObject.