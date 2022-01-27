testing
usesNamespaces
	"Uses direct access and isNil test for performance"
	^ configuration isNil or: [configuration usesNamespaces]