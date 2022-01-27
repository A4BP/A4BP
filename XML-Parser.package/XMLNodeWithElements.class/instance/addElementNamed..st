adding
addElementNamed: aName
	"element is added first before naming so it inherits namespaces from self"
	^ (self addNode: (self nodeFactory classForElement: aName) new)
		name: aName