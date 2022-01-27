enumerating
elementsSelect: aBlock
	^ self select: [:each | each isElement and: [aBlock value: each]]