private
errorUndeclaredUnparsedEntity: aName
	XMLValidationException
		formatSignal: 'Undeclared unparsed entity reference &{1}; as attribute value'
		with: aName