accessing
parameterAt: aKey ifAbsent: aBlock
	self parameterKeysAndValuesDo: [:key :value |
		key = aKey
			ifTrue: [^ value]].
	^ aBlock value.