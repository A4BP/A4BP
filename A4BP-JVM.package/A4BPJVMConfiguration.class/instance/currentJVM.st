as yet unclassified
currentJVM
	JVM current
		ifNil: [ 
			self autoConfigure
				ifTrue: [ self doAutoConfigure ].
			self startJava ].
	^ JVM current