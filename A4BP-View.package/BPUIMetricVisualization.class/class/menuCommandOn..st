as yet unclassified
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'MetricVisualization')
			"icon: A4BPUIIcons mainIcon;"
			parent:#'A4BP';
			action:[self go];
			label:'Metric Visualization';
			help: 'Show a easy interface to explore the metrics in the objects'.