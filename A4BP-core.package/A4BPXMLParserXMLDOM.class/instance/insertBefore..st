writer
insertBefore: aXML
	|aNewDoc |
	aNewDoc := A4BPFactoryXMLParser parser parse: (ReadStream on: aXML).
	aNewDoc parser writeXMLOn: writer.	
	parser writeXMLWithOutChildrenOn: writer.
	^ writer