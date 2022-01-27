accessing
elementAt: aName ifAbsent: aBlock
	^ self
		detect: [:each | each isElement and: [each isNamed: aName]]
		ifNone: aBlock