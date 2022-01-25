build
createBaseOn: aParser
	| obj |
	obj := self new.
	obj parser: aParser.
	^ obj