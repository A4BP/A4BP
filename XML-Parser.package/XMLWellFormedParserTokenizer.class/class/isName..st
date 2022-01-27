testing
isName: aString
	"optimized"
	1 to: aString size do: [:i | 
		((NameChars includes: (aString at: i))
			and: [i > 1
				or: [(AdditionalNameChars includes: (aString at: i)) not]])
			ifFalse: [^ false]].
	^ aString size > 0.