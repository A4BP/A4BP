*A4BP-BpelAnalyzer-view-Visualization
visitBPProcess: aModel
	| visualizations builder|
	visualizations := OrderedCollection new.
	builder := BPBPELVCBuilder new.
	visualizations addAll: (aModel accept: builder).
	^ visualizations