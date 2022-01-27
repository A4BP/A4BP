private 
errorInvalidValue: aValue
	XMLValidationException
		formatSignal: 'Invalid value "{1}" for attribute "{2}"'
		with: aValue
		with: self attribute