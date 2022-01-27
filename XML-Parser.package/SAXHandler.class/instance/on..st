initialization
on: aStringOrStream
	input := aStringOrStream.

	"a single instance can parse multiple documents with on:,
	so all these values must be reset"
	documentURI := nil.
	isInContent := false.
	isInCDataSection := false.

	"but the configurations can be shared, so it is only
	default initialized once"
	configuration 
		ifNil: [self configuration: self configurationClass new].