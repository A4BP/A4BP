private
deleteFileOrDo: aBlock
	[self fileDirectory
		deleteFileNamed: path
		ifAbsent: [^ aBlock value]]
		on: Error
		do: aBlock