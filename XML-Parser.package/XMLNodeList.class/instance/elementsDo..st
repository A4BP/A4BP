enumerating
elementsDo: aBlock
	self do: [:each | each isElement ifTrue: [aBlock value: each]]