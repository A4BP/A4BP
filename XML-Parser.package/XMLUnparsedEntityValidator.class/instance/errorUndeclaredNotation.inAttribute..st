private
errorUndeclaredNotation: aNotation inAttribute: anAttribute
	XMLValidationException
		formatSignal: 'Undeclared NOTATION "{1}" in "{2}" attribute'
		with: aNotation
		with: anAttribute