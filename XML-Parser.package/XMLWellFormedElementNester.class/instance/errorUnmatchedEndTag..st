private
errorUnmatchedEndTag: anElementName
	XMLWellFormednessException
		formatSignal: 'End </{1}> tag with no corresponding start <{1}> tag'
		with: anElementName