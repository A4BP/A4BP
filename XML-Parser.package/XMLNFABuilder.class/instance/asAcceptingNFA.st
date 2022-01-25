converting
asAcceptingNFA
	^ (self
		applyAccepting;
		popFragment) firstState