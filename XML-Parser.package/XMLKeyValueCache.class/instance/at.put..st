accessing
at: aKey put: aValue
	(self collection includesKey: aKey)
		ifFalse: [
			self collection size >= self maxSize
				ifTrue: [self clear]].
	^ self collection at: aKey put: aValue.