accessing
innerXML
	"returns XML source of descendent nodes as string"
	^ String streamContents: [:stream | self printInnerXMLOn: stream]