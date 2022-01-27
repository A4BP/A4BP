element handling
handleElements: anElementNameCollection withClass: aClass
	anElementNameCollection do: [:each | self handleElement: each withClass: aClass]