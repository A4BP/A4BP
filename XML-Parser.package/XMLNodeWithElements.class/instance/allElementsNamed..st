accessing
allElementsNamed: aName
	^ self allElementsSelect: [:each | each isNamed: aName]