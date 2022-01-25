all
allOnMessage
	| visitor |
	visitor := BPCollectorBPOnMessageVisitor new.
	visitor calculateLstFrom: activities.
	^ visitor lstBPObj