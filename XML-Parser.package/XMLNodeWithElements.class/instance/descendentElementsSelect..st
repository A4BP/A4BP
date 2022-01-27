enumerating
descendentElementsSelect: aBlock
	| selectedElements |

	selectedElements := self newListForSelect.
	self descendentElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements addLast: each]].
	^ selectedElements.