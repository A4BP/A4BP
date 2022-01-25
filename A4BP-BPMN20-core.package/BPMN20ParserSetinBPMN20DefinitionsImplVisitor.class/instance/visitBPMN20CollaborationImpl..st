visitor
visitBPMN20CollaborationImpl: aModel
	element addRootElement: aModel.
	"add definitions as a root implements"
	aModel myRoot: aModel