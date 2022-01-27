instance creation
fileReadStreamOn: aPath
	^ (Smalltalk at: #StandardFileStream) readOnlyFileNamed: aPath