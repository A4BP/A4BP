accessing
ancestorElements
	| ancestorElements |

	ancestorElements := self newListForSelect.
	self ancestorElementsDo: [:each | ancestorElements addLast: each].
	^ ancestorElements.