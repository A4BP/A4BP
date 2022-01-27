private
setPathSegmentsFromString: aString
	pathSegments := OrderedCollection new.

	"pathSegments must remain empty if the path string is empty, but splitting
	an empty string would add a single empty string to it"
	aString isEmpty
		ifFalse: [
			$/
				xmlParserSplit: aString
				do: [:segment | pathSegments addLast: segment]].