private
currentWorkingDirectoryPathString
	^ String streamContents: [:stream |
		"the class-side workingDirectory isn't used for backwards compatibility"
		(Smalltalk at: #FileSystem) disk workingDirectory
			path segments do: [:each |
				stream
					nextPut: $/;
					nextPutAll: each]].