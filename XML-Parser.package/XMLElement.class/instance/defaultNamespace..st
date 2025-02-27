namespacing
defaultNamespace: aURI
	"unlike non-default namespaces, the uri can be empty to shadow an
	inherited default namesapce"
	| oldNamespace |

	oldNamespace := self defaultNamespace.
	self
		updateEnclosedScopesWith: [:scope | scope defaultNamespace: aURI]
		whileTrue: [:scope | scope defaultNamespace = oldNamespace]
		validateAfter: false.