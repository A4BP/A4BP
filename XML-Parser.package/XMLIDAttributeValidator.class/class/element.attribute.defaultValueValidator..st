instance creation
element: anElement attribute: anAttribute defaultValueValidator: aDefaultValueValidator
	^ (self classForAttribute: anAttribute) new
		setElement: anElement
		attribute: anAttribute
		defaultValueValidator: aDefaultValueValidator