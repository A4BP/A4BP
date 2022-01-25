accessing
nextPut: anObject
	| byte |

	stream nextPut: $%.

	"pad it if needed"
	(byte := anObject asInteger) < 16r10
		ifTrue: [stream nextPut: $0].

	"On GS, #printOn:base: shows the radix, so #printOn:base:showRadix:
	is used instead"
	byte
		printOn: stream
		base: 16
		showRadix: false.
	^ anObject.