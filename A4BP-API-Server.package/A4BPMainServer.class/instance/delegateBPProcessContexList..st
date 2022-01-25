delegate
delegateBPProcessContexList: params
	"
		find the context list in the data base 
		base on user parameters and prepare the json format to return
		
	"
	|userid level generator|
	params isEmpty ifTrue:[ ^ self buildErrorRes: 'params is required (userid)' ].
	userid := params at: 'userid' ifAbsent: [ ^ self buildErrorRes: 'userid is required' ].
	level := params at: 'level' ifAbsent: [ ^ self buildErrorRes: 'level is required' ].
	level := level asInteger.
	generator := A4BPApiGenTreeCtxOnJson new.
	generator generate: A4BPSOAAnalyzer instance level: level.
	^ self buildRes: generator result.
	
	