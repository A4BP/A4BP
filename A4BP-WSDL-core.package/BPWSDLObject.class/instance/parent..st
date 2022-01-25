getset
parent: aParent
	super parent: aParent.
	[ myWSDL := aParent wsdl ]
		on: Error
		do: [  ]