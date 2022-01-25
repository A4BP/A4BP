CFCMetric_Examples
CFC_example01_bankLoanProcessV001
	"
	self new CFC_example01_bankLoanProcessV001
	"
	| parser view |
	parser := BPEL20Parser new.
	parser parseString: BPCFCMetricScenarios new bankLoanProcessV001.
	view := RTMondrian new.
	view nodes: (1 to: 500).
	view open