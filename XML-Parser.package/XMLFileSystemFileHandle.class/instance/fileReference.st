private
fileReference
	^ fileReference ifNil: [fileReference := path asFileReference]