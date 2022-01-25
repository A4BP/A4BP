visitor
visitBPWSDLwsdl: aModel
	| actions |
	actions := self actionBasicBrowser: aModel.
	^ actions