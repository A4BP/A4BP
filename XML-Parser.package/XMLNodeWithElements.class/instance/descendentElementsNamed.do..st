enumerating
descendentElementsNamed: aName do: aBlock
	self descendentElementsDo: [:each |
		(each isNamed: aName)
			ifTrue: [aBlock value: each]]