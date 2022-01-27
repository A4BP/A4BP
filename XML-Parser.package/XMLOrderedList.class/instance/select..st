enumerating
select: aBlock
	| selected |

	selected := self copyEmpty.
	self do: [:each |
		(aBlock value: each)
			ifTrue: [selected addLast: each]].
	^ selected.