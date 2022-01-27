private
deleteFileOrDo: aBlock
	[self fileReference delete]
		on: self fileSystemError 
		do: aBlock