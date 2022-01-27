printing
canonicallyPrinted
 	"Prints as canonical XML"
	^ String streamContents: [:stream | self canonicallyPrintOn: stream]