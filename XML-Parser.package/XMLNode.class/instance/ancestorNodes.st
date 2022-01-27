accessing
ancestorNodes
	| ancestors |

	ancestors := self newListForSelect.
	self ancestorNodesDo: [:each | ancestors addLast: each].
	^ ancestors.