visitor
visitBPSequence: aModel
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions