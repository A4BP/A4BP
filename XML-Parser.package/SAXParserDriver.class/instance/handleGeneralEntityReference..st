handling
handleGeneralEntityReference: aName
	^ self doctypeDefinition
		generalEntityAt: aName
		ifAbsent: [
			self isValidating
				ifTrue: [self errorUndeclaredGeneralEntity: aName].
			nil]