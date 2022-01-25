builder
fromXMLDescription: document
	"The argument is a complete description of an XML process"
	| wsdl |
	"is an instante of on WSDLWsdl"
	wsdl := self new.
	self fillBData: document in: wsdl.
	self fillElementsIn: wsdl from: document.
	^ wsdl