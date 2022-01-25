converting
asString
	"don't assume Object>>#asString is defined, for portability"
	^ self printString