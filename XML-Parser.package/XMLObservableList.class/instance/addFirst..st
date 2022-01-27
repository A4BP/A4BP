adding
addFirst: anObject
	self beforeAdding: anObject.
	collection addFirst: anObject.
	self afterAdding: anObject at: 1.
	^ anObject.