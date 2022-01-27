accessing
allNodes
	| allNodes |

	allNodes := self newListForSelect.
	self allNodesDo: [:each | allNodes addLast: each].
	^ allNodes.