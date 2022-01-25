generate
genNodes: aModel level:level alevel:alevel
	|nodes|
	nodes := aModel getChildrenNodes.
	nodes ifNil:[ ^ self].
	(alevel > level or:nodes isEmpty)
	ifTrue:[
		self increasenodekey.
		sbjson := sbjson , '{',(self genid:aModel),',"name":"', aModel name , '"}'.
	] 
	ifFalse:[
		nodes do:[ :n |
			self increasenodekey.
			sbjson := sbjson , '{',(self genid:aModel),',"name":"', n name , '","children":['.
			self genNodes: n level:level alevel:alevel + 1 .
			sbjson := sbjson , ']},'.
		].
		"Remove the last character"
		[sbjson := sbjson copyFrom: 1 to: (sbjson size - 1).] on: Error do:[ :e |  A4BPLog d: e].
	].