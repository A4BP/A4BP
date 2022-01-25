metrics
metricProcessDifficulty
	"Process Difificulty
	 D = ( n1 / 2 ) * ( N2 / n2) 
	Where:
	n1 is the number of unique activities, splits and joins and control-flow elements of business process
	n2 is the number of unique data variables manipulated by the process and its activities
	N1 is the total number of elements
	N2 is the total number of data occurrences"
	| n1 n2 N1 N2 process |
	n1 := 0.
	n2 := 0.
	N1 := 0.
	N2 := 0.
	process := 0.
	^ 0