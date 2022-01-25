getset
myRoot
	myRoot ifNil: [ parent ifNotNil: [ myRoot := parent myRoot ] ].
	^ myRoot