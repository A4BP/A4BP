parser
parseStream: stream
	"base on stream object the stream create BPObjets to represent the xml in memory"
	| document |
	"Start creating a XMLDOM Object from stream"
	"document := (XMLDOMParser on: stream) parseDocument."
	document := self getDocumentBaseOnStream: stream.
	document nodes do: [ :docAtr | 
			| bpElement refTag localName|
			localName := docAtr localName.
			refTag := self getTagRef getClassBPBaseOnTypeName: localName.
			bpElement := refTag objclass fromXMLDescription: docAtr.
			bpElement buildInternalRelations.
			self addElement: bpElement ]