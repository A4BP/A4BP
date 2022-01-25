glamour-builder-display
lstOfMessageFrom: org
	| messageNames metricMessageTypes|
	messageNames := BPUIMetricFindMetricMessageNames findMetrics: org classType.
	metricMessageTypes := messageNames collect:[:m | BPUIMetricMessageType build:m].
	^ metricMessageTypes