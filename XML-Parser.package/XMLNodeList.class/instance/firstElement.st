accessing
firstElement
	^ self
		detect: [:each | each isElement]
		ifNone: [self defaultValue]