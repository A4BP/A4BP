getset
myProcess
	myProcess ifNil: [ myProcess := parent myProcess ].
	^ myProcess