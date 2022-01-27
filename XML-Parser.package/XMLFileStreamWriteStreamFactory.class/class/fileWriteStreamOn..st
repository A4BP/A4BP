instance creation
fileWriteStreamOn: aPath
	^ (Smalltalk at: #FileStream) fileNamed: aPath