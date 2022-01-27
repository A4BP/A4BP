testing
isDeclaredPrefix: aPrefix
	"is namespace prefix in scope for use by receiver and descendants"
	^ self namespaceScope includesPrefix: aPrefix