visitor
visitBPScope: aModel
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions