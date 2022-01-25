factory
newGenericType: aBPObject
	| bpVT array |
	bpVT := self new.	"find the namespace of the definition"
	array := (self findType: aBPObject) substrings: ':'.
	array size > 0
		ifTrue: [ 
			array size > 1
				ifTrue: [ 
						bpVT prefix: (array at: 1).
						bpVT element: (array at: 2) ];
				ifFalse: [ bpVT element: (array at: 1) ] ].
	^ bpVT