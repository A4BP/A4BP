dsl
outFlows
	|lst|
	lst := A4BPDictionary new.
	flowNodeRefs do:[ :n | n outFlows 
		do:[:nn | 
			|lane| 
			lane := nn myLane.
			lane ~= self ifTrue:[lst add: lane ].
		]].
	^ lst