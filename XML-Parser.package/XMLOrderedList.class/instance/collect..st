enumerating
collect: aBlock
	| collected |

	collected := self species new: self size.
	self do: [:each | collected addLast: (aBlock value: each)].
	^ collected.