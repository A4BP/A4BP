notifying
addedElement: anElement
	self addedNode: anElement.
	anElement configuration: self configuration.