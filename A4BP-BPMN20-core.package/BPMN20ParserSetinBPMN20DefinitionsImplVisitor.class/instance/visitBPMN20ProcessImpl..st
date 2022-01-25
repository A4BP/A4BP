visitor
visitBPMN20ProcessImpl: aModel
	element addRootElement: aModel.
	"add definitions as a root implements"
	aModel myRoot: element