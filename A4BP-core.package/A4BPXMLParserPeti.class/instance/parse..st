actions
parse: aStream
	|document bpNode|
	document := PPXmlParser new end parse:aStream.
	bpNode := A4BPXMLParserPeti createBaseOn: document.
	^ bpNode