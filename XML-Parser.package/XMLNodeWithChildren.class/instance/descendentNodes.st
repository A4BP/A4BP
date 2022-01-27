accessing
descendentNodes
	| descendentNodes |

	descendentNodes := self newListForSelect.
	self descendentNodesDo: [:each | descendentNodes addLast: each].
	^ descendentNodes.