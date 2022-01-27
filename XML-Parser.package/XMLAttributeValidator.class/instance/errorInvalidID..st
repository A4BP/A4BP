private
errorInvalidID: anID
	XMLValidationException
		formatSignal: 'Invalid ID "{1}" in attribute "{2}"'
		with: anID
		with: self attribute