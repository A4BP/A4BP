searching
findElementNamed: aName with: aBlock
	^ self allElementsDetect: [:each | (each isNamed: aName) and: [aBlock value: each]]