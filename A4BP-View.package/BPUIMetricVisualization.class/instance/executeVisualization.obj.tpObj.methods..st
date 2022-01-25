glamour-builder-display
executeVisualization: view  obj:obj  tpObj:tpObj  methods: methods
	| action mondrian one two three|
	mondrian := RTMondrian new.
	mondrian view:view.
	
	one := methods at:1.
	two := methods at:2.
	three := methods at:3.
	
	action := BPUIMetricVizActionInClass new.
	action rootObj: obj.
	"Find the nodes to show base on the Element type selected"
	tpObj new accept: action.
	
	"Execute the vizualization"			
	mondrian shape rectangle
		width: [ :o | self evaluate: o with:one ];
		height: [ :o | self evaluate: o with: two ];
		fillColor: [ :o | Color gray alpha: (1 / (self evaluate: o with: three))].
	mondrian nodes: action nodes.
	
	mondrian build.
