getset
parseStreamReflection: stream
	"base on stream object the stream create BPObjets to represent the xml in memory"

	| document  metaDocument|
	"Start creating a XMLDOM Object from stream"
	"document := (XMLDOMParser on: stream) parseDocument."
	metaDocument := self getDocumentBaseOnStream: BPMN20Parser semantic_xsdStream.
	document := self getDocumentBaseOnStream: stream.
	document nodes
		do: [ :n | 
			| bpElement refTag|
			refTag := self getTagRef getClassBPBaseOnTypeName: (n localName).
			bpElement := refTag objclass fromXMLDescription: n withMeta: metaDocument.
			bpElement buildInternalRelations.
			self addElement: bpElement ]