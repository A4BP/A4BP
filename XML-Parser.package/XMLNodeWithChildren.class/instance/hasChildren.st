testing
hasChildren
	"Direct variable access avoids possibly unnecessary lazy initialization of the node list"

	^ nodes notNil and: [nodes size > 0]