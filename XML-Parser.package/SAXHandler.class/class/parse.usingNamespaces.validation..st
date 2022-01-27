parsing
parse: aStringOrStream usingNamespaces: aNamespaceBoolean validation: aValidationBoolean
	"Parses string or stream possibly with namespace checking
	or validation (both defualt enabled)"

	^ (self on: aStringOrStream)
		usesNamespaces: aNamespaceBoolean;
		isValidating: aValidationBoolean;
		parseDocument