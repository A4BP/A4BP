accessing
rawContentString
 	"Returns a combined string of all descendant string values without any spaces
	inserted for readability.
	
	See also #contentString"

	^ String streamContents: [:stream | self printRawContentOn: stream]