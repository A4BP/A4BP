basic
basicCurrentWorkingDirectory
	"avoid the class #workingDirectory message for Pharo1x compatibility"
	^ (XMLClassFinder classNamed: #FileSystem) disk workingDirectory pathString