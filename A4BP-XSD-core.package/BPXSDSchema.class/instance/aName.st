getset
aName
	aName = ''
		ifTrue: [ ^ self fileName ];
		ifFalse: [ ^ aName ]