private
errorRemovingAbsentHeader: aKey
	XMLHTTPException
		formatSignal: 'Cannot remove absent HTTP header "{1}" from message'
		with: aKey