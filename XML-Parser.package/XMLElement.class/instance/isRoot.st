testing
isRoot
	"Is the receiver the root element?"
	^ (self hasParent and: [self parent isElement]) not