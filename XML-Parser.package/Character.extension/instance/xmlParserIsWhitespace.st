*XML-Parser
xmlParserIsWhitespace
	"Overridden in Gemstone version"
	|value|
	value := self asciiValue.
	value = 32 "space"
		ifTrue: [^ true].
	value = 10 "lf"
		ifTrue: [^ true].
	value = 9 "tab"
		ifTrue: [^ true].
	value = 13 "cr"
		ifTrue: [^ true].
	value = 12 "form feed"
		ifTrue: [^ true].
	^ false.