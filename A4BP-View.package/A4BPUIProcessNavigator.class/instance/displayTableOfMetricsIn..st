as yet unclassified
displayTableOfMetricsIn: finderComposite
	| glm |
	glm := finderComposite table.
	glm title: 't'.
	glm titleIcon: GLMUIThemeExtraIcons glamorousBrowse.
	glm
		display: [ :org | self lstOfMetricMessagesFrom: org ];
		column: [ :org | 'Metrics' ] evaluated: #asString;
		column: 'Value' evaluated: [ :org | org evaluate ]	"display tree with all children of the node"