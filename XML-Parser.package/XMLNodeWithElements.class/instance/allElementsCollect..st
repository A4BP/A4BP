enumerating
allElementsCollect: aBlock
	| collectedObjects |

	collectedObjects := self newListForCollect.
	self allElementsDo: [:each | collectedObjects addLast: (aBlock value: each)].
	^ collectedObjects.