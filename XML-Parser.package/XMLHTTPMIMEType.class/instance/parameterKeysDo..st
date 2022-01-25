enumerating
parameterKeysDo: aBlock
	self parameters do: [:each |
		aBlock value: each key]