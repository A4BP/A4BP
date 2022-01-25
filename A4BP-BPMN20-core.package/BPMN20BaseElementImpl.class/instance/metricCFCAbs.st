metrics
metricCFCAbs
	| cfc |
	cfc := BPMN20MetricAbsCFC new.
	^ cfc calculeCFC: self