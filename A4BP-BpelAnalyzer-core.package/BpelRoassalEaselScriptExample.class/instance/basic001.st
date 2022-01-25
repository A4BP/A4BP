as yet unclassified
basic001
	"self new basic001"
	|view ctx|
	view:=RTMondrian new .
	ctx:=SOAContextTest soaWorldBase.
	"[start script]"
	view shape rectangle height: #numberOfVariables;
	width:#numberOfActivities;
	linearFillColor: #calculateCFC within: ctx allBPProcess.
	view nodes:ctx allBPProcess.
	view shape line color: Color blue.
	view edges: ctx allBPProcess from:#yourself  toAll:#allInvokesProcess.
	view circleLayout.
	"[end script]"
	view open.