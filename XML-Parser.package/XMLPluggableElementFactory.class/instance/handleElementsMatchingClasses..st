element handling
handleElementsMatchingClasses: aClassCollection
	aClassCollection do: [:each | self handleElementsMatchingClass: each]