accessing
replaceNode: aNode with: aReplacementNode
	"replace node in the receiver with another node.
	if the second node is also in the receiver, their
	positions are just swapped"
	| firstIndex secondIndex |

	firstIndex := self nodes indexOf: aNode.
	(secondIndex := self nodes indexOf: aReplacementNode) > 0
		ifTrue: [self nodes swap: firstIndex with: secondIndex]
		ifFalse: [self nodes at: firstIndex put: aReplacementNode].
	^ aReplacementNode.