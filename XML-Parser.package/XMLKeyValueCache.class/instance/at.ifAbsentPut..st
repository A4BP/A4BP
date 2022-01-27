accessing
at: aKey ifAbsentPut: aBlock
	^ self collection
		at: aKey
		ifAbsent: [
			self collection size >= self maxSize
				ifTrue: [self clear].

			self collection
				at: aKey
				put: aBlock value]