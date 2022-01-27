class initialization
initializeNameChars
	"This creates a character set that coveres the entire range of characters speicified for
	the NameChar production rule in the XML spec."

	(NameChars := BitmapCharacterSet new: 16rF0000)
		add: $:;
		addAll: ($A to: $Z);
		add: $_;
		addAll: ($a to: $z).
	16rC0 to: 16rD6 do: [:each | NameChars add: (Character value: each)].
	16rD8 to: 16rF6 do: [:each | NameChars add: (Character value: each)].
	16rF8 to: 16r2FF do: [:each | NameChars add: (Character value: each)].
	16r370 to: 16r37D do: [:each | NameChars add: (Character value: each)].
	16r37F to: 16r1FFF do: [:each | NameChars add: (Character value: each)].
	16r200C to: 16r200D do: [:each | NameChars add: (Character value: each)].
	16r2070 to: 16r218F do: [:each | NameChars add: (Character value: each)].
	16r2C00 to: 16r2FEF do: [:each | NameChars add: (Character value: each)].
	16r3001 to: 16rD7FF do: [:each | NameChars add: (Character value: each)].
	16rF900 to: 16rFDCF do: [:each | NameChars add: (Character value: each)].
	16rFDF0 to: 16rFFFD do: [:each | NameChars add: (Character value: each)].
	16r10000 to: 16rEFFFF do: [:each | NameChars add: (Character value: each)].

	AdditionalNameChars do: [:each | NameChars add: each].