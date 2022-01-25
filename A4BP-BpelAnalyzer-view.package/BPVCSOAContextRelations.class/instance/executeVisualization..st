as yet unclassified
executeVisualization: view
	| b colorv legendBuilder |
	view @ RTDraggableView.
	b := RTMondrian new.
	colorv := A4BPUIBPModelColorBuilderVisitor new.
	b view: view.
	"start the visualization"
	b shape ellipse size: [:n|n size * 20];color: [:node | node accept:colorv].
	b nodes: bpObj getChildrenNodes.
	"
	b edges
		connectTo: [ :node | node allRelations ];
		useInLayout;
		shape: (RTLine new color: Color gray).
	"
	b layout force charge: -400.
	b build.

	"add the legend"
	
	legendBuilder := RTLegendBuilder new view: view.
	"
	legendBuilder addColor:(BPProcess new accept:colorv) text: 'BPEL Process'.
	legendBuilder addColor:(BPWSDLWsdl new accept:colorv) text: 'WSDL'.
	legendBuilder addColor:(BPXSDSchema new accept:colorv) text: 'XSD Schema'.
	legendBuilder build.
	"
	
