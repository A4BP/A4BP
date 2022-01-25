initialize-release
initialize 
	super initialize.
	newViewBlock := [ RSCanvas new ].
	shouldPopulateSelection := true.
	self defaultActions