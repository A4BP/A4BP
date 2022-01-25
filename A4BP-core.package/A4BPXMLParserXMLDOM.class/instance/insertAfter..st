writer
insertAfter: aXML
	|aNewDoc |
	aNewDoc := A4BPFactoryXMLParser parser parse: (ReadStream on: aXML).
	parser writeXMLWithOutChildrenOn: writer.
	aNewDoc parser writeXMLOn: writer.
	^ writer