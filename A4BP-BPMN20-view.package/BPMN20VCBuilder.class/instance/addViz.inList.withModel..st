as yet unclassified
addViz: aClass inList: visualizations withModel: aModel
	visualizations add: (aClass new bpObj: aModel).
	^ visualizations