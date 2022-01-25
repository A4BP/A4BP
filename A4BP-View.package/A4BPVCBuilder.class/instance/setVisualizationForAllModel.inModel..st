visit
setVisualizationForAllModel: visualizations inModel: aModel
	"call for all visitmetod to add the visualization that can execute all objects in the model"

	| bpvc |
	bpvc := A4BPVCBasicRelations new.
	bpvc bpObj: aModel.
	visualizations add: bpvc.
	^ visualizations