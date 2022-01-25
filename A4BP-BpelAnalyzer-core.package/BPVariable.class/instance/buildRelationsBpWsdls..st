build-relations
buildRelationsBpWsdls: aBPWsdl
	"when a variable recive a wsdl they need to know the target namespace to decide if this
	wsdl have the definition of the content in the variable"
	| pos |
	pos := text findString: aBPWsdl targetNamespace.
	" if true if because the wsdl have the definition of the variable composition"
	pos > 0 ifTrue: [ self buildMeMyDefBaseOnBPWSDL: aBPWsdl ].