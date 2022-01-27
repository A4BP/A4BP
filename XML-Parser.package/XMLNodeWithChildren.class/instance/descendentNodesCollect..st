enumerating
descendentNodesCollect: aBlock
	| collectedObjects |

	collectedObjects := self newListForCollect.
	self descendentNodesDo: [:each | collectedObjects addLast: (aBlock value: each)].
	^ collectedObjects.