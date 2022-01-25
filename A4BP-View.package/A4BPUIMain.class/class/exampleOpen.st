test-open
exampleOpen
	| aSOAAnalyzer aSOAContext parser processModel|
	aSOAAnalyzer := A4BPSOAAnalyzer instance.
	aSOAContext := A4BPSOAContext new.
	parser := BPMN20Parser parseString: BPSimImplementerGuidev1_0_2Test tecnicalSupportProcessV1_0_1_bpmn.
	processModel := parser definitions first.
	aSOAContext addElement:processModel.
	aSOAAnalyzer addSOAContext: aSOAContext.
	A4BPUIMain open: aSOAAnalyzer