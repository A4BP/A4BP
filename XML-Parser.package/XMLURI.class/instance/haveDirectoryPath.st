private
haveDirectoryPath
	self hasPath
		ifFalse: [pathSegments addLast: ''].
	pathSegments addLast: ''.