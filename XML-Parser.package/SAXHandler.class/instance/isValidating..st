configuring
isValidating: aBoolean
	"If true and document contstraints are present (in a DTD),
	the document will be checked against them (default).

	Enabling disables preservesUndeclaredEntityReferences.
	Disabling disables requiresDocumentConstraints."

	self configuration isValidating: aBoolean