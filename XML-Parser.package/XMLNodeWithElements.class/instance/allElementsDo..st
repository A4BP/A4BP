enumerating
allElementsDo: aBlock
	"Descend depth-first visiting each element with aBlock."

	self hasChildren
		ifTrue: [self elementsDo: [:each | each allElementsDo: aBlock]]