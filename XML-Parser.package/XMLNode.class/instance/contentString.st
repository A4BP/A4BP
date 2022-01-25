accessing
contentString
 	"Returns a combined string of all descendant string values with spaces inserted
	for readability when one string has no trailing space and the next has no
	leading space.

	See also #rawContentString."

	^ String streamContents: [:stream | self printContentOn: stream]