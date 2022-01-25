as yet unclassified
displayAnalysisIn: constructor
	constructor finder
		title: [ :a | a name ];
		show: [ :a | 
					self displayVisualizationIn: a.
					self displayTableOfMetricsIn: a.
					self displayTreeNodesIn: a.
					self displaySourceIn: a].
	^ constructor