testing
atLimitedEnd
	^ limit <= 0
		and: [stream atEnd not]