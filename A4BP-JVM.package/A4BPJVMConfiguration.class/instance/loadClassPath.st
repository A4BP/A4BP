as yet unclassified
loadClassPath
	|stremPath files|
   stremPath := WriteStream on: (String new).
	self addPath: '.' stream: stremPath.
	files := self basePathDir asFileReference allFiles select: [ :each | each basename endsWith: '.jar' ].
	files do:[ :file |
		self addPath: file fullName stream: stremPath.	
	].
   ^ stremPath contents
