add
addRootElement: aElement
	self rootElements at: aElement key put: aElement.
	self childrens add: aElement.