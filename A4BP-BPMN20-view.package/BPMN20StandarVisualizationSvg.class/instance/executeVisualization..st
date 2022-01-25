visualization
executeVisualization: view
	| model cv eb nodes mnodes  svgv vizp composite| 
	view @ RTDraggableView.
	model := bpObj.
	cv:= A4BPUIBVFactory colorVisitor.
	svgv := BPMN20IconsSvg new.
	
	nodes :=  model flowElements.
	"Start the visualization"	
	vizp:= BPMN20StandarVizPoint new.
	vizp addBasicElement: view.
	composite := RTCompositeShape new.
	model lanes do: [ :el |  el shape  ifNotNil: [ 
		| point es box label|
		point := vizp newp:el.
		"box := (RTBox new 
			width: el shape bounds width;
			height: el shape bounds height;
			color:[:n | n accept:cv];
			borderColor: Color black) ."
		box := RTBox new.
		label := RTLabel new.
		composite add: box.
		composite add: label.
		es := composite elementOn:el.
		es @ RTDraggable @ RTPopup.
		es translateTo: point.
		es @ RTPopup.
		es when: TRMouseClick do: [ :evt | evt element inspect ].
		view add: es.
		] 
	].
			
	nodes do: [ :el | el shape  ifNotNil: [ 
		| point es eslabel|
		point := vizp newp:el.
		"create element on into the svgv visitor, create the element base on svg object"
		es :=  el accept: svgv.
		es color: (el accept:cv).
		eslabel := RTLabel new elementOn:el.
		es translateTo: point.
		eslabel translateTo: point.
		es @ RTDraggable @ RTPopup.
		es when: TRMouseClick do: [ :evt | evt element inspect ].
		view add: es.
		view add: eslabel.
		] 
	].
	
	eb := RTEdgeBuilder new.
	eb notUseInLayout.
	eb view: view.
	eb shape arrowedLine color: Color black.
	(eb objects: nodes )connectFrom:#yourself toAll: [ :e |  e outFlows].
	mnodes := model messageFlows.
	(eb objects: mnodes) connectFrom: [ :e |  e sourceRef] to: [ :e |  e targetRef].
	view canvas camera focusOnCenterScaled.