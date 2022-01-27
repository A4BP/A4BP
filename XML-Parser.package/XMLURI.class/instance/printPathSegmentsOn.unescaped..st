printing
printPathSegmentsOn: aStream unescaped: aBoolean
	pathSegments
		do: [:each |
			aBoolean
				ifTrue: [self printUnescapedPathSegment: each on: aStream]
				ifFalse: [aStream nextPutAll: each]]
		separatedBy: [aStream nextPut: $/]