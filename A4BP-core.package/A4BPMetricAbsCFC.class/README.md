An A4BPMetricAbsCFC is visitor class to calculo
the absolute value into a process stage.
Notes: 
(cardoros 2008)
Control-Flow complexity of business ProcessesMathematically, control-flow complexity metric is additive. 
	Thus, it is very easy to calculate the complexity of a process simply by adding the CFC of all split constructs. 
	The absolute con- trol-flow complexity is calculated as follows, where P is a business process.
	CFC (P) = abs
	( ∑ CFCXOR−split i) + i∈(XOR-splits of P)
	( ∑ CFCOR−split j)+ j∈(OR-splits of P)
	( ∑ CFCAND−split k)+ k∈(AND-splits of P)
	The relative control-flow complexity for process P is calculated as follows, where |P| is the number of activities of process P 	(see Box 1).
	The greater the value of the CFCabs(P) and CFCrel(P), the greater the overall architectural complexity of a process. CFC 	analysis seeks to evaluate complexity without direct execution of processes. 
	The function of CFC is computed based on the 	individual control-flow complex- ity of XOR, OR, and AND –splits. 
	Unless 	otherwise stated, CFC(P) denotes the absolute 	control-flow complexity.
	"