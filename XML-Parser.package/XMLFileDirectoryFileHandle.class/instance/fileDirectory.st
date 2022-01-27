private
fileDirectory
	^ fileDirectory ifNil: [fileDirectory := (Smalltalk at: #FileDirectory) default]