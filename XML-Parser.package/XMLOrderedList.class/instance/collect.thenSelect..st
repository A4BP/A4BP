enumerating
collect: aCollectBlock thenSelect: aSelectBlock
	| collected |

	collected := self species new.
	self do: [:each | | collectedObject |
		(aSelectBlock value: (collectedObject := aCollectBlock value: each))
			ifTrue: [collected addLast: collectedObject]].
	^ collected.