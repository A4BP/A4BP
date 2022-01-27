This class is an XML parser that uses event handling. The acronym "SAX" refers to Java's "Simple API for XML," on which SAXHandler's API is based. To use this class, create a subclass and override handlers under the handling "content" and "lexical" categories as needed. By default, namespace support and validation are enabled (but not external entity resolution).

To instantiate a SAXHandler, send any of the #on: or #parse- messages to a subclass.

The class-side #parse- messages take some input source and parse it immediately, returning the result:
	SAXHandlerSubclass parse: xml.
	SAXHandlerSubclass parseURL: aUrl. 
	SAXHandlerSubclass parse: xml usingNamespaces: false

The #on: messages create new parsers on the given input string, stream, URL, or file and return it; the instance can then be further configured and ultimately sent #parseDocument to parse the input:
	(SAXHandlerSubclass on: xml)
		isValidating: true;
		resolvesExternalEntities: true;
		parseDocument.

#interruptParsing can be sent from within a handler to stop parsing before end, and there is also #parseDocumentWhile: and #parseDocumentUntil: 
	(SAXHandlerSubclass on: xml)
		parseDocumentWhile: [self shouldKeepParsing].

To parse incrementally, send #parser to an instance to get the underlying XMLParser object and send it #parseToken repeatedly:
	(handler := SAXHandlerSubclass on: xml)
		isValidating: false; 
		preservesUndeclaredEntityReferences: true.
	parser := handler parser.

	"Only parse the first 10 tokens:"
	10 timesRepeat: [parser parseToken].

There are security limits on input you can remove with #removeLimits or change with messages like #documentReadLimit:
	(SAXHandlerSubclass on: xml)
		removeLimits;
		documentReadLimit: newReadLimit;
		maxEntityReplacementDepth: newMaxEntityDepth;
		parseDocument.
		
#optimizeForLargeDocuments  should be used when parsing large documents if you don't care for validating or namespaces.