initialize-release
initialize 
	super initialize.
	newViewBlock := [ A4BPCanvas new ].
	shouldPopulateSelection := true.
	self defaultActions