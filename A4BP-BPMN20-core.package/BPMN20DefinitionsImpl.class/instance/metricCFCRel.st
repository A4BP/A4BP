metrics
metricCFCRel
	| number process |
	number := 0.
	process := childrens values select: [ :m | m class = BPMN20ProcessImpl ].
	process do: [ :p | number := number + p metricCFCRel ].
	^ number