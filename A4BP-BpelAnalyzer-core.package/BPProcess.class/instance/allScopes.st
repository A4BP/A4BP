all
allScopes
	| visitor |
	visitor := BPMetricBPScopeActivities new.
	visitor calculateActivitiesFrom: activities.
	^ visitor lstActivities