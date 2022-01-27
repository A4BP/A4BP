searching
findElementNamed: aName
	^ self allElementsDetect: [:each | each isNamed: aName]