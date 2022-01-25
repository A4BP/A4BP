metrics-BPActivity
lstAllActivities
"show all activities include into child activities elements"
	"
	| visitor |
	visitor := BPMetricActivities new.
	visitor calculateActivitiesFrom: self lstActivities.
	^ visitor lstActivities
	"