metrics
numberOfInvokes
	| v number |
	v := BPMetricBPInvokeActivities new.
	number := 0.
	self lstRelations do: [ :rel | rel accept: v ].
	number := v numberOfActivities.
	^ number