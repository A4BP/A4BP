private
errorUnexpectedPCData: aString
	XMLValidationException
		formatSignal: 'Unexpected PCDATA in <{1}> element'
		with: self element