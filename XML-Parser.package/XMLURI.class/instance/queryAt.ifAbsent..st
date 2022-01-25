accessing
queryAt: aKey ifAbsent: aBlock
	"Returns the first percent/plus-decoded value of the query string
	parameter aKey or the value of aBlock if there isn't one"

	self rawQuery do: [:each |
		(self percentAndPlusDecode: each key) = aKey
			ifTrue: [^ self percentAndPlusDecode: each value]].
	^ aBlock value.