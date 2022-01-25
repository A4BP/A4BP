visualization
executeVisualization: view
	"this visualization is execute using roassal1"
	| vPSimple |
	
	cv := A4BPUIBPModelColorBuilderVisitor new.
	rtc := BPRTComposer new.
	rtc gap:35.
	
	rtc view: view.

	vPSimple:= BPVCBasicRelations new.
	vPSimple bpObj: bpObj.
	vPSimple executeVisualization: view.
	rtc propagateHighlight.
	rtc group: #plot.
	
	vPSimple:= BPVCBPProcessNormalLayout new.
	vPSimple bpObj: bpObj.
	vPSimple executeVisualization: view.
	rtc propagateHighlight.
	rtc group: #stat.
	
	rtc move: #plot below: #stat.
