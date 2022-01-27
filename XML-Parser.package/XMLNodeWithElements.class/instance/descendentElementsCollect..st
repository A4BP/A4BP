enumerating
descendentElementsCollect: aBlock
	| collectedObjects |

	collectedObjects := self newListForCollect.
	self descendentElementsDo: [:each | collectedObjects addLast: (aBlock value: each)].
	^ collectedObjects.