private
errorInvalidRoot: anElementName
	XMLValidationException
		formatSignal: 'Root element must be <{1}>, not <{2}>'
		with: self doctypeDefinition root
		with: anElementName