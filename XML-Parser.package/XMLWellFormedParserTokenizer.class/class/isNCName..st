testing
isNCName: aString
	"optimized"
	1 to: aString size do: [:i | | nextChar |
		(nextChar := aString at: i) == $:
			ifTrue: [^ false].
		((NameChars includes: nextChar)
			and: [i > 1
				or: [(AdditionalNameChars includes: nextChar) not]])
			ifFalse: [^ false]].
	^ aString size > 0.