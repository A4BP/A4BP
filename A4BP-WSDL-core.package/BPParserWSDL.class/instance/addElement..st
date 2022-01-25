parser
addElement: e
	|wsdl|
	wsdl := BPWSDLWsdl new.
	wsdl wsdlDefinition: e.
	wsdl aName: e aName.
	wsdl nsNameSpaces: e nameSpaces.
	lstElements add: wsdl