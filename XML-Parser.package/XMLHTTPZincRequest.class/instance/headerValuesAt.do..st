enumerating
headerValuesAt: aKey do: aBlock
	self zincRequest headers
		at: aKey
		ifPresent: [:value |
			value isArray
				ifTrue: [value do: aBlock]
				ifFalse: [aBlock value: value]]