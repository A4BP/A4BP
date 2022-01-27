enumerating
reject: aBlock
	| selected |

	selected := self copyEmpty.
	self do: [:each |
		(aBlock value: each)
			ifFalse: [selected addLast: each]].
	^ selected.