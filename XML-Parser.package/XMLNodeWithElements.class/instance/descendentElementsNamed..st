accessing
descendentElementsNamed: aName
	^ self descendentElementsSelect: [:each | each isNamed: aName]