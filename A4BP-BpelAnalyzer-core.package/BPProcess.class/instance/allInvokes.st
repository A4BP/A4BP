all
allInvokes
	| visitor |
	visitor := BPMetricBPInvokeActivities new.
	visitor calculateActivitiesFrom: activities.
	^ visitor lstActivities