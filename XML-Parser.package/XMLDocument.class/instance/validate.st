validating
validate
	"revalidate against the DTD it was parsed with (if any)"
	self doctypeDefinition
		ifNotNil: [:dtd |
			dtd hasValidators
				ifTrue: [dtd clearIDsAndIDReferences].
			self validateWith: (DTDDocumentValidator doctypeDefinition: dtd)]