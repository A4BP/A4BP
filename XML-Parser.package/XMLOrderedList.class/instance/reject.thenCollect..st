enumerating
reject: aRejectBlock thenCollect: aCollectBlock
	| collected |

	collected := self species new.
	self do: [:each |
		(aRejectBlock value: each)
			ifFalse: [collected addLast: (aCollectBlock value: each)]].
	^ collected.