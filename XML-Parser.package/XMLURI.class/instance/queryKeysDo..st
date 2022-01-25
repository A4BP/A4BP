enumerating
queryKeysDo: aBlock
	self rawQuery do: [:each |
		aBlock value: (self percentAndPlusDecode: each key)]