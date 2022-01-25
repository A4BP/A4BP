finder
findNameElement: aKeyName
	| el |
	el := A4BPEmptyObj instance.
	[ ^ el := self lstElements at: aKeyName ]
		on: KeyNotFound
		do: [  ].
	[ ^ el := self lstComplexTypes at: aKeyName ]
		on: KeyNotFound
		do: [  ].
	[ ^ el := self lstSimpleTypes at: aKeyName ]
		on: KeyNotFound
		do: [  ].
	^ el