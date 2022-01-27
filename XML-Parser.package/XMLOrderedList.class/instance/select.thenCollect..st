enumerating
select: aSelectBlock thenCollect: aCollectBlock
	| collected |

	collected := self species new.
	self do: [:each |
		(aSelectBlock value: each)
			ifTrue: [collected addLast: (aCollectBlock value: each)]].
	^ collected.