getset
lstAllActivitiesWithDeep:aDeepLevel
"show all activities include into child activities elements"
	| visitor |
	visitor := BPMetricAllActivitiesWithDeepLevel new.
	visitor calculateActivitiesFrom: activities withDeep: aDeepLevel .
	^ visitor lstActivities