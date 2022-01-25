getset
getDocumentBaseOnStream: aStream
	"return the object to be parser"
	| document |
	document := A4BPFactoryXMLParser parser parse: aStream.
	^ document