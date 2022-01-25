as yet unclassified
visitBPProcess: aModel
	| visualizations bpvc|
	visualizations := OrderedCollection new.
	
	bpvc := BPVCBPProcessDashBoard new bpObj: aModel.
	visualizations add: bpvc.
	
	bpvc := BPVCBPProcessNormalLayout new bpObj: aModel.
	visualizations add: bpvc.
	
	bpvc := A4BPVCBPProcessSimple new bpObj: aModel.
	visualizations add: bpvc.
	
	bpvc := A4BPVCBasicRelations new bpObj: aModel.
	visualizations add: bpvc.

	^ visualizations