accessing
headerAt: aKey ifAbsent: aBlock
	self zincRequest headers
		at: aKey
		ifPresent: [:value |
			^ value isArray
				ifTrue: [value first]
				ifFalse: [value]].
	^ aBlock value.