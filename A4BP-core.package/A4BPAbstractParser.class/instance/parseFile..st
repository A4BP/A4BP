parser
parseFile: aFile
	"base on stream object the stream create BPObjets to represent the xml in memory"
	
	[ ^ self parseFileWithError: aFile ]
		on: Error
		do: [ :e |  
			self manageError: e inFile: aFile ]
	
	"^ self parseFileWithError: aFile "