visitor
visitBPMN20LaneSetImpl: aModel
	self addmyRoot: aModel.
	"set in the process a new set"
	aModel addLane: element.