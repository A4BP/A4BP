*A4BP-BpelAnalyzer-view-Visualization
visitBPScope: aBPScope
	| visualizations |
	visualizations := OrderedCollection new.
	self setVisualizationForAllModel: visualizations inModel: aBPScope.
	^ visualizations