visualization
executeVisualization: view
	| model cv eb nodes mnodes  svgv vizp composite| 
	self makeDraggableView: view.
	self makeControllerView: view.
	model := bpObj.
	cv:= A4BPUIBVFactory colorVisitor.
	svgv := BPMN20IconsSvg new.
	
	nodes :=  model flowElements.
	"Start the visualization"	
	vizp:= BPMN20StandarVizPoint new.
	vizp addBasicElement: view.
	composite := RSShapeBuilder new.
	model lanes do: [ :el |  el shape  ifNotNil: [ 
		| point es box label|
		point := vizp newp:el.
		"box := (RTBox new 
			width: el shape bounds width;
			height: el shape bounds height;
			color:[:n | n accept:cv];
			borderColor: Color black) ."
		box := RSBox new.
		label := RSLabel new.
		"composite add: box.
		composite add: label."
		es := composite shapeOn:el.
		es @ RSDraggable @ RSPopup.
		es translateTo: point.
		es @ RSPopup.
		"es when: TRMouseClick do: [ :evt | evt element inspect ]."
		view add: es.
		] 
	].
			
	nodes do: [ :el | el shape  ifNotNil: [ 
		| point es eslabel|
		point := vizp newp:el.
		"create element on into the svgv visitor, create the element base on svg object"
		es :=  el accept: svgv.
		es color: (el accept:cv).
		es translateTo: point.
"		eslabel := RTLabel new elementOn:el.
		eslabel translateTo: point."
		es @ RSDraggable @ RSPopup.
		"es when: TRMouseClick do: [ :evt | evt element inspect ]."
		view add: es.
		"view add: eslabel."
		] 
	].
	
	eb := RSEdgeBuilder arrowedLine.
	"eb notUseInLayout."
	"eb view: view.
	eb shape arrowedLine color: Color black.
	(eb objects: nodes )connectFrom:#yourself toAll: [ :e |  e outFlows].
	mnodes := model messageFlows.
	(eb objects: mnodes) connectFrom: [ :e |  e sourceRef] to: [ :e |  e targetRef].
	view canvas camera focusOnCenterScaled."