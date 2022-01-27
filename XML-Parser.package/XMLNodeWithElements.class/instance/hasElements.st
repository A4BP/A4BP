testing
hasElements
	"Faster version used when traversing to avoid initializing the node list
	in leaf elements"
	^ nodes notNil and: [nodes hasElements]