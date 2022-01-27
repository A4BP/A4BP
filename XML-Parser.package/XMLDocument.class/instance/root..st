accessing
root: anElement
	"replaces root element with new element"
	self hasChildren
		ifTrue: [self removeNodes: self elements].
	self addNode: anElement.