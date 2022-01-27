parsing
parse: aStringOrStream usingNamespaces: aNamespaceBoolean validation: aValidationBoolean externalEntities: anEntityResolutionBoolean
	"Parses string or stream possibly with namespace checking
	or validation (both defualt enabled)
	or external entity resolution (default disabled)"

	^ (self on: aStringOrStream)
		usesNamespaces: aNamespaceBoolean;
		isValidating: aValidationBoolean;
		resolvesExternalEntities: anEntityResolutionBoolean;
		parseDocument