getset
lstAllActivities
	"show all activities include into child activities elements"

	| visitor |
	visitor := BPMetricAllActivities new.
	visitor calculateActivitiesFrom: lstActivities.
	^ visitor lstActivities