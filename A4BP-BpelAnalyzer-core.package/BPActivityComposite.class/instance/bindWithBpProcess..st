bind
bindWithBpProcess: aBPProcess
	super bindWithBpProcess: aBPProcess.
	lstActivities do:[ :act | act bindWithBpProcess: aBPProcess].
	