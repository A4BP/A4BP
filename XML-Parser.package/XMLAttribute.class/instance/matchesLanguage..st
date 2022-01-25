testing
matchesLanguage: aLanguageTag
	"Returns true if the value is an IETF language tag that matches aLanguageTag.
	Matching is case-insensitive, and aLanguageTag can be partial, like 'en',
	and use wildcards, like 'en-*'"

	| sourceLanguageTag targetLanguageTag i |

	((sourceLanguageTag := self value asLowercase) isEmpty
		or: [(targetLanguageTag := aLanguageTag asLowercase) isEmpty])
		ifTrue: [^ false].

	sourceLanguageTag = targetLanguageTag
		ifTrue: [^ true].

	sourceLanguageTag := $- xmlSplit: sourceLanguageTag.
	i := 0.
	$-
		xmlSplit: targetLanguageTag
		do: [:each | | sourceLanguageSubTag |
			sourceLanguageSubTag :=
				sourceLanguageTag
					at: (i := i + 1)
					ifAbsent: [^ false].
			(sourceLanguageSubTag = each
				or: [each = '*'])
				ifFalse: [^ false]].

	^ true.