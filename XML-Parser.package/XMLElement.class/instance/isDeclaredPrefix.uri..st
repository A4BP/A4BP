testing
isDeclaredPrefix: aPrefix uri: aURI
	"is namespace prefix mapped to uri in scope for use by receiver and descendants"
	^ self namespaceScope
		includesPrefix: aPrefix
		mappedTo: aURI