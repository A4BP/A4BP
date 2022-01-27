private
errorUndeclaredUnparsedEntityReference: aName inAttribute: anAttriubute
	XMLValidationException
		formatSignal: 'Undeclared unparsed entity "{1}" in "{2}" attribute'
		with: aName
		with: anAttriubute