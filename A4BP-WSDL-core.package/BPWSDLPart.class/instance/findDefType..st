build-relations
findDefType: aDef
	| array |
	"Example: element='client:process'"
	array := element subStrings: ':'.
	aDef element = (array at: 2)
		ifTrue: [ 
			aDef prefix: (array at: 1).
			^ myWSDL findDefTypeInXSD: aDef ].
	^ nil