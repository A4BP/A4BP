visualization
executeVisualization: view
	"this visualization is execute using roassal1"
	| vPSimple |
	cv := A4BPUIBPModelColorBuilderVisitor new.
	rtc := A4BPRTComposer new.
	rtc gap:35.
	rtc view: view.

	vPSimple:= A4BPVCSOAContextRelations new.
	vPSimple bpObj: bpObj.
	vPSimple executeVisualization: view.
	rtc propagateHighlight.
	rtc group: #stat.
	
	
	vPSimple:= A4BPVCSOAProcessCharter01 new.
	vPSimple bpObj: bpObj.
	vPSimple executeVisualization: view.
	rtc propagateHighlight.
	rtc group: #plot.
	
	
	rtc move: #plot onTheRightOf: #stat.
