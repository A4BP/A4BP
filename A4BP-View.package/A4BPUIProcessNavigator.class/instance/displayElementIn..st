as yet unclassified
displayElementIn: constructor
	constructor finder
		title: [ :a | a name ];
		show: [ :a | 
					self displayLstOfVisualizationIn: a.
					self displayTableOfMetricsIn: a.
					self displayTreeNodesIn: a .
					self displaySourceIn: a].
	^ constructor