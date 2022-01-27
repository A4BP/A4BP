accessing
allElements
	| allElements |

	allElements := self newListForSelect.
	self allElementsDo: [:each | allElements addLast: each].
	^ allElements.