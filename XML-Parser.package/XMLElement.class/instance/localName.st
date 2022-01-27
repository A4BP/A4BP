accessing
localName
	^ localName ifNil: [localName := self name localNameAfterPrefix]