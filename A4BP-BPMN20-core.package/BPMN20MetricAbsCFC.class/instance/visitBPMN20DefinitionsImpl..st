as yet unclassified
visitBPMN20DefinitionsImpl:aModel 
	| cfcAbs |
	cfcAbs := 0.
	aModel process do: [ :el | cfcAbs := cfcAbs + (el accept: self) ].
	^ cfcAbs