visualization
executeVisualization: view
	| model cv eb nodes mnodes  vizp shapeNodes|
	view @ RTDraggableView.
	model := bpObj.
	cv:= A4BPUIBVFactory colorVisitor.
	nodes :=  model flowElements.
	vizp:= BPMN20StandarVizPoint new.
	"Start the visualization"
	shapeNodes := nodes select:[:el | el shape isNotNil].
	shapeNodes do: [ :el | 
		| point es|
		point := vizp newp:el.
		es := (RTBox new 
		width: el shape bounds width;
		height: el shape bounds height;
		color:[:n | n accept:cv];
		elementOn: el) 
		translateTo: point.
		es @ RTDraggable @ RTPopup.
		es when: TRMouseClick do: [ :evt | evt element model inspect ].
		modifyElementBlock cull: es.
		view add: es.
	].
	"RTNest new for: view elements add: [ :group :esmodel | 
		group add: ((RTLabel new) elementOn: esmodel aName).
		RTGridLayout on: group.
	]."
	
	eb := RTEdgeBuilder new.
	eb view: view.
	eb shape arrowedLine color: Color black.
	eb objects: nodes from: #yourself toAll: [ :e |  e outFlows].
	
	mnodes := model messageFlows.
	eb objects: mnodes from: [ :e |  e sourceRef] to: [ :e |  e targetRef].
	
	eb notUseInLayout.
	view canvas camera focusOnCenterScaled.