private
addDotPathSegment
	self hasNonDirectoryPath
		ifTrue: [self haveDirectoryPath]