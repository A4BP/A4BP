private
errorUnexpectedElement: aName
	XMLValidationException
		formatSignal: 'Unexpected <{1}> element in <{2}> element'
		with: aName
		with: self element