parser
manageError: e inFile: aFile 
	|element|
	A4BPLog f: 'Error Parsing file' , aFile fullPath asString , 'ERROR:' , e asString.
	element := A4BPUnParserObj new.
	element fileName: aFile fullPath basename.
	element tagName: element fileName.
	element fullPath: aFile fullName.
	element error: e.
	self addElement: element.
