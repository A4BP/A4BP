private
errorNonDefaultValue
	XMLValidationException
		formatSignal: '#FIXED attribute "{1}" can only have "{2}" as value'
		with: self attribute
		with: self defaultValue