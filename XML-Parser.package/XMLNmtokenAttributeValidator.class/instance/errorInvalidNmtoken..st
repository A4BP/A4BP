private
errorInvalidNmtoken: aName
	XMLValidationException
		formatSignal: 'Invalid Nmtoken name "{1}" in attribute "{2}"'
		with: aName
		with: self attribute