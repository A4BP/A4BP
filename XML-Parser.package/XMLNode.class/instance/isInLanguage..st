testing
isInLanguage: aLanguageTag
	"Returns true if one of the ancestor elements of the receiver has an xml:lang
	attribute, and if the value is an IETF language tag, like 'en-US', that matches
	aLanguageTag. Matching is case-insensitive, and aLanguageTag can be partial,
	like 'en', and use wildcards, like 'en-*'"

	^ self hasParent
		and: [self parent isInLanguage: aLanguageTag]