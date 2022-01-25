metrics-BPActivity
numberOfActByClass: aClass
	| lst |
	lst := self lstAllActivities select: [ :act | act class == aClass ].
	^ lst size