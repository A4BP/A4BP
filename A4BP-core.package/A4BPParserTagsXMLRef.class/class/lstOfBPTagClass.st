factory
lstOfBPTagClass
	tags ifNil: [ tags := Dictionary new ].
	tags size > 0
		ifTrue: [ ^ tags ].
	self setEmptyObj: tags.
	self setUnParseObj: tags.
	self fillTags.
	^ tags