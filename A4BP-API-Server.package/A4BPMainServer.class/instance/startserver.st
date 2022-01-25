init
startserver
	server ifNotNil: [ server isRunning ifTrue:[ 
			server stop.
			server start.
			^ server.
			] ].
	server := (ZnMultiThreadedServer new port: self port) 
		start;
		yourself.
	^ server