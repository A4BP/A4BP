visualization
executeViz: view
	| cv eb  values  m|
	
	m := self buildView: view.
	
	"Execute the visulization"
	cv := A4BPUIBVFactory color.
	m interaction action:[ :n | n inspect].
	values := bpObj flowElements.
	
	m nodes: values.
	
	"Blues, PuBuGn, BuPu, GnBu, YlGn, Greens, YlOrBr, YlOrRd, Greys, Reds, YlGnBu, PuRd, RdPu, PuBu, BuGn, Oranges, Purples, OrRd"
	"m normalizer
		normalizeColor: #numberOfRelations 
		using: (RTColorPalette sequential colors: 9 scheme: 'YlOrRd') 
		using: #value;
		normalizeSize: #metricCFCAbs  min: 5 max: 30 
		using: [:value | (value + 1) ln ]."
		
	eb := m lines.
	eb shape color:(Color lightGray).
	eb connectFrom:#yourself toAll:[ :n | n outFlows].
	m layout tree.
	m build.