visitor
visitBPVariable: aModel
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions