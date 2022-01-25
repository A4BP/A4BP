metrics
invokes
	| v |
	v := BPMetricBPInvokeActivities new.
	self lstRelations do: [ :rel | rel accept: v ].
	^ v lstActivities