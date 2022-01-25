tokenizing - dtd
nextEndDoctypeDeclaration
	self nextDoctypeDeclarationTerminator.
	state := state postDoctypeDeclarationState.

	driver handleEndDTD.