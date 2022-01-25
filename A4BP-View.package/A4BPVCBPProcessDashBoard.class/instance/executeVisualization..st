visualization
executeVisualization: view
	| vPSimple  cv rtc|
	
	cv := A4BPUIBPModelColorBuilderVisitor new.
	rtc := A4BPRTComposer new.
	rtc gap:35.
	rtc view: view.

	vPSimple:= A4BPVCBasicRelations new.
	vPSimple bpObj: bpObj.
	vPSimple executeVisualization: view.
	rtc propagateHighlight.
	rtc group: #plot.
	
	vPSimple:= A4BPVCBPProcessNormalLayout new.
	vPSimple bpObj: bpObj.
	vPSimple executeVisualization: view.
	
	rtc propagateHighlight.
	rtc group: #stat.
	
	rtc move: #plot below: #stat.
