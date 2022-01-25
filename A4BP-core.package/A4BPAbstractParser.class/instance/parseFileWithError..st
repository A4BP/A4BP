parser
parseFileWithError: aFile
	"base on stream object the stream create BPObjets to represent the xml in memory"
	"('PRGestionBOBTTR.bpmn' = aFile fullPath basename) ifTrue:[self halt]."
	aFile
		readStreamDo: [ :stream | 
			| document |
			"Start creating a XMLDOM Object from stream"
			document := self getDocumentBaseOnStream: stream.
			document nodes
				do: [ :docAtr | 
					| bpElement refTag |
					refTag := self getTagRef getClassBPBaseOnTypeName: docAtr localName.
					bpElement := refTag objclass fromXMLDescription: docAtr.
					bpElement fileName: aFile fullPath basename.
					bpElement fullPath: aFile fullName.
					bpElement buildInternalRelations.
					A4BPLog f: ' new element was create,name:' , bpElement fileName.
					self addElement: bpElement ] ]