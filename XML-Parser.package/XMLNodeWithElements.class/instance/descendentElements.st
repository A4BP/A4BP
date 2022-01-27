accessing
descendentElements
	| descendentElements |

	descendentElements := self newListForSelect.
	self descendentElementsDo: [:each | descendentElements addLast: each].
	^ descendentElements.