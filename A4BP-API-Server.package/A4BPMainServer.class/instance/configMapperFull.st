config
configMapperFull
	mapper := Dictionary new.
	self getSimple.
	self postAddObject.
	self deleteObject.
	self postBuildQueryOnBPMN.
	self getBPProcessContextList.