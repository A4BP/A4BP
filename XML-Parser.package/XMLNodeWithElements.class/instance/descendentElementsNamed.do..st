deprecated
descendentElementsNamed: aName do: aBlock
	self deprecated: 'use #descendantElementsNamed:do: instead'.
	^ self
		descendantElementsNamed: aName
		do: aBlock.