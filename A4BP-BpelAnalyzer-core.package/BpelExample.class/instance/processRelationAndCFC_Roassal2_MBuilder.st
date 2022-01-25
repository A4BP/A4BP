analitics-example
processRelationAndCFC_Roassal2_MBuilder
	"self new processRelationAndCFC_Roassal2_MBuilder"
	| v soaWorld nodes|
	soaWorld := SOAContextTest soaWorldBase.	
		"Create de principal object to draw"
	v := RTMondrian new.	
		
	nodes:=soaWorld allBPProcess.
	
	v shape rectangle fillColor:Color blue;
		height: [ :p | p calculateCFC * 2 ];
		width: [ :p | p numberOfActivities * 2].
	v nodes: nodes.
	v shape directedLine.
	v edges: nodes from:#yourself  toAll:#allInvokesProcess.
	v gridLayout.
	v open