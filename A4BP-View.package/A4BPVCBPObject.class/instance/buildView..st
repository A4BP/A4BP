as yet unclassified
buildView: aView
	|b|
	b:= self buildView.
	b view: aView.
	self makeDraggableView: aView.
	self makeControlleriew: aView.
	^ b