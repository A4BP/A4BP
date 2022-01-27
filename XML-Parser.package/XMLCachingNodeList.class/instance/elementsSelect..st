enumerating
elementsSelect: aBlock
	| selectedElements |

	selectedElements := self copyEmpty.
	self cachedElements do: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements addLast: each]].
	^ selectedElements.