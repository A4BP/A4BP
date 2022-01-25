key
key
	(self id = nil or: self = '')
		ifTrue: [ id := UUID new asString ].
	^ id