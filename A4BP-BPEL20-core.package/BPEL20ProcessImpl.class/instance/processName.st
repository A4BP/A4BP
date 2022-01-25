accessing
processName
	processName ifNil: [ processName := self aName ].
	^ processName