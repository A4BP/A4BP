enumerating
parameterKeysAndValuesDo: aTwoArgumentBlock
	self parameters do: [:each |
		aTwoArgumentBlock
			value: each key
			value: each value]