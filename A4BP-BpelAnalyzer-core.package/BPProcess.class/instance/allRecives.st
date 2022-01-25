all
allRecives
	| visitor |
	visitor := BPMetricBPReceivesActivities new.
	visitor calculateActivitiesFrom: activities.
	^ visitor lstActivities