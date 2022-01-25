all
allProcessInvoke
	| lstBPProcess |
	lstBPProcess := OrderedCollection new.
	self allInvokes
		do: [ :aBPInvoke | 
			lstBPProcess addAll: (aBPInvoke link allRelations select: [ :r | r class = BPProcess ]) 
		].
	^ lstBPProcess