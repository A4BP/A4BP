initialization
initialize
	super initialize.

	"always used, so explicitly initialized"
	isValidating := true.
	usesNamespaces := true.
	decodesCharacters := true.
	requiresSchema := false.
	parserLimits := XMLParserLimits new.