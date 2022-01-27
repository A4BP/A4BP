class initialization
initialize
	"self initialize"

	"array instead of dictionary for speed"
	CharacterDigitValues := Array new: 256 withAll: -1.
	($0 to: $9) do: [:each |
		CharacterDigitValues
			at: each asciiValue
			put: each asciiValue - $0 asciiValue].
	($A to: $F) do: [:each |
		CharacterDigitValues
			at: each asciiValue
			put: each asciiValue - $A asciiValue + 10].
	($a to: $f) do: [:each |
		CharacterDigitValues
			at: each asciiValue
			put: each asciiValue - $a asciiValue + 10].