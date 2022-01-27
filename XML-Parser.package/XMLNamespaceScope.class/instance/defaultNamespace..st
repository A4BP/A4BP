accessing
defaultNamespace: aURI
	"unlike non-default namespaces, the uri can be empty to shadow an
	inherited default namesapce"
	self
		validatePrefix: ''
		beforeMappingTo: aURI.

	"copy-on-write"
	self copiedPrefixMappings
		at: ''
		put: aURI.