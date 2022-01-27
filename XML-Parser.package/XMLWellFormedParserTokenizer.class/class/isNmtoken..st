testing
isNmtoken: aString
	"optimized"
	1 to: aString size do: [:i |
		(NameChars includes: (aString at: i))
			ifFalse: [^ false]].
	^ aString size > 0.