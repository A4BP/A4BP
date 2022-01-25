testing
isInLanguage: aLanguageTag
	"Returns true if the receiver is an xml:lang attribute or if its element
	or an ancestor element has an xml:lang attribute, and if the value is an IETF
	language tag, like 'en-US', that matches aLanguageTag. Matching is
	case-insensitive, and aLanguageTag can be partial, like 'en', and use
	wildcards, like 'en-*'"

	self name = 'xml:lang'
		ifTrue: [^ self matchesLanguage: aLanguageTag]
		ifFalse: [^ super isInLanguage: aLanguageTag]