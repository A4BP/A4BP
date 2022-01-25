accessing
classNamed: aClassName ifPresent: aPresentBlock ifAbsent: anAbsentBlock
	^ aPresentBlock cull:
		(self
			classNamed: aClassName
			ifAbsent: [^ anAbsentBlock value])