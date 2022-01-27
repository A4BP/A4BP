private
errorImproperlyNestedElements: anElementName
	XMLWellFormednessException
		formatSignal: '<{1}> element ended before enclosed element(s) {2}'
		with: anElementName
		with: (self printedElementsEnclosedBy: anElementName)