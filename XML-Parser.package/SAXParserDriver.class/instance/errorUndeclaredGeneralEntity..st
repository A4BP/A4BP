private
errorUndeclaredGeneralEntity: aName
	XMLValidationException
		formatSignal: 'Undeclared general entity reference &{1};'
		with: aName