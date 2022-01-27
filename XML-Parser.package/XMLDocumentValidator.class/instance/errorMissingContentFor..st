private
errorMissingContentFor: aName
	XMLValidationException
		formatSignal: 'Element <{1}> terminated prematurely'
		with: aName