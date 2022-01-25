all
allInvokesProcess
	| lstBPProcess |
	lstBPProcess := OrderedCollection new.
	self allInvokes
		do: [ :aBPInvoke | 
			"lstBPProcess addAll: (aBPInvoke link allRelations select: [ :r | r class = BPProcess ])"
			lstBPProcess addAll: (aBPInvoke processInvoke)
		].
	^ lstBPProcess