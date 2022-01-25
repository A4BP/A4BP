init
start
	self startserver
	onRequestRespond: [ :req |
		|key|
		key := self genkeywithreq: req.
		(mapper at: key ifAbsent: [ nil ])
		ifNil: [ ZnResponse badRequest: req ]
		ifNotNil: [ :handler |
			handler value: req ] ].
	^ server.