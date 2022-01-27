instance creation
onFileNamed: aFilePathString
	"Returns new parser on the specified file but doesn't parse"

	^ self
		on: (XMLFileHandle path: aFilePathString) readStream
		documentURI: aFilePathString