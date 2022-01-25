testing
isInLanguage: aLanguageTag
	"Returns true if the receiver or one of its ancestors has an xml:lang
	attribute, and if the value is an IETF language tag, like 'En-US', that matches
	aLanguageTag. Matching is case-insensitive, and aLanguageTag can be partial,
	like 'En', and use wildcards, like 'En-*'"

	^ (self
		attributeNodeAt: 'xml:lang'
		ifAbsent: [
			^ self hasParent
				and: [self parent isInLanguage: aLanguageTag]])
			matchesLanguage: aLanguageTag