accessing
classNamed: aClassName ifAbsent: aBlock
	"'self environment at:' is the proper way to get a class that may not
	exist, not 'Smalltalk at:', 'Smalltalk globals at:' or '#ClassName asClass'
	(assuming both this class and aClassName class are in the same environment)"
	^ self environment
		at: aClassName asSymbol
		ifAbsent: aBlock