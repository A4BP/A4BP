visitor
visitA4BPObject: aModel
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions