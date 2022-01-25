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
	n1 := 1.
	n2 := 1.
	N1 := 1.
	N2 := 1.
	process :=  (n1 / 2 ) * ( N2 / n2 ) .
	^ process