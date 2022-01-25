visitor
visitBPObject: aModel
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions