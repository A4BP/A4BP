visitor
visitBPVariables: aModel
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions