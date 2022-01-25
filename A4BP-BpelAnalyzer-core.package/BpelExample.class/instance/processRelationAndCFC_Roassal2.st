analitics-example
processRelationAndCFC_Roassal2
	"self new processRelationAndCFC_Roassal2"

	| view els soaWorld n nodes|
	soaWorld := SOAContextTest soaWorldBase.
	nodes:=soaWorld allBPProcess.
	view := RTView new.
	
	n := RTGrayLinearColor new command: #calculateCFC.
	els := (RTBox new
		height: [ :p | p numberOfInvokes * 10 ];
		width: [ :p | p numberOfActivities * 10];
		color:Color blue) elementsOn: nodes.
	els do:[:e| e + (RTLabel new text: e model aName)].
	els @ RTDraggable.
	view addAll: els.
	
	"conecta cada nodo con sus relaciones "
	RTEdge
		buildEdgesFromObjects: nodes
		from: #yourself
		toAll: #allInvokesProcess
		using:
			(RTLine new
				attachPoint: RTShorterDistanceAttachPoint new;
				color: Color veryDarkGray)
				+
					(RTArrow new
						attachPoint: RTShorterDistanceAttachPoint new;
						color: Color veryDarkGray)
		inView: view.
	
	RTGridLayout on: els.
	view open