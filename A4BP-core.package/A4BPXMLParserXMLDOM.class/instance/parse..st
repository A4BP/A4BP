actions
parse: aStream
	| document bpNode |
	document := (XMLDOMParser on: aStream) parseDocument.
	bpNode := A4BPXMLParserXMLDOM createBaseOn: document.
	^ bpNode