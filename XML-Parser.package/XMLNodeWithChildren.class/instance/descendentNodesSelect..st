enumerating
descendentNodesSelect: aBlock
	| selectedNodes |

	selectedNodes := self newListForSelect.
	self descendentNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedNodes addLast: each]].
	^ selectedNodes.