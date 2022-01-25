creator
createBaseOnPath: aString
	"create a soa world base on path of file system"

	| afr files parsers |
	afr := aString asFileReference.
	self configName: afr.
	parsers := self getParsers.
	parsers
		do: [ :parser | 
			parser filePrefix 
			do:[ :filep | 
				
				files := afr allFiles select: [ :each | each basename endsWith: filep ].
				files 
				do: [ :file | parser parseFile: file ].
				].
			parser addInContext: self 
			].
	self buildRelations