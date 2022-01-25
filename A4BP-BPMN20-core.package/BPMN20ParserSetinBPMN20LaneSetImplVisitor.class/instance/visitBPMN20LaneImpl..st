visitor
visitBPMN20LaneImpl: aModel
	self addmyRoot: aModel.	
	"set in the process a new set"
	element addLane: aModel