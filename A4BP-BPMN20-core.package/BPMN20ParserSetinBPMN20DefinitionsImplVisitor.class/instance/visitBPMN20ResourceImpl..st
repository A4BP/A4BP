visitor
visitBPMN20ResourceImpl: aModel
	"A resoruce is similar in context to add a process in the object definitions"
	element addRootElement: aModel.
	"add definitions as a root implements"
	aModel myRoot: element