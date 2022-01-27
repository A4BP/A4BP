private
handleReservedAttributes: anAttributeDictionary
	anAttributeDictionary
		at: 'xml:base'
		ifPresent: [:uri | self currentURI: uri].
	self isValidating
		ifTrue: [self validator validateXMLIDAttributeIn: anAttributeDictionary].

	self elementNester
		setScopedAttributesNamed: self scopedAttributeNames
		from: anAttributeDictionary.

	hasUnhandledReservedAttributes := false.