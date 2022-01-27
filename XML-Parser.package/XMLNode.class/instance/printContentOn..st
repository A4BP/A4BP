printing
printContentOn: aStream
 	"Prints combined content strings of all descendants with space inserted
	when one string has no trailing space and the one after has no leading space"
	self printRawContentOn: (XMLNodeContentWriteStreamAdapter on: aStream)