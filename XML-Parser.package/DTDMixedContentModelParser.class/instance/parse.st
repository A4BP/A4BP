parsing
parse
	^ XMLMixedContentElementValidator
		element: element
		allowedElements: self parseAllowedElements