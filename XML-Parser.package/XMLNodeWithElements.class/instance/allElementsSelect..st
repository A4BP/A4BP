enumerating
allElementsSelect: aBlock
	| selectedElements |

	selectedElements := self newListForSelect.
	self allElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements addLast: each]].
	^ selectedElements.