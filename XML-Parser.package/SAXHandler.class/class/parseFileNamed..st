parsing
parseFileNamed: aFilePathString
	"Parses document in specified file"

	^ (self onFileNamed: aFilePathString) parseDocument