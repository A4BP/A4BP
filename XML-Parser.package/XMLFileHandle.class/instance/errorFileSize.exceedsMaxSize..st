private
errorFileSize: aFileSize exceedsMaxSize: aMaxSize
	XMLLimitException
		formatSignal: 'File of size {1} exceeds max size limit of {2}: {3}'
		with: aFileSize
		with: aMaxSize
		with: path