enumerating
allNodesCollect: aBlock
	| collectedObjects |

	collectedObjects := self newListForCollect.
	self allNodesDo: [:each | collectedObjects addLast: (aBlock value: each)].
	^ collectedObjects.