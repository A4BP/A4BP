visitors
visitBPOnMessage: aBPOnMessage
	aBPOnMessage bpActivity ifNil: [ ^ self ].
	aBPOnMessage bpActivity accept: self