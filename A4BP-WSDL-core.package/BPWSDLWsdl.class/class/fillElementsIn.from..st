builder
fillElementsIn: aBPWSDLWsdl from: document
	|wsdlDef|
	wsdlDef :=BPWSDLDefinition fromXMLDescription: document in: aBPWSDLWsdl.
	aBPWSDLWsdl wsdlDefinition: wsdlDef.
	aBPWSDLWsdl nsNameSpaces: document nameSpaces.
