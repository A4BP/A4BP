as yet unclassified
visitBPMN20ParallelGatewayImpl: aModel
	"
	(cardoso 2008)
	OR-split control-flow complexity is also determined by the number of mental states that are introduced with the split. For 	OR-splits, the control-flow complexity is 2n-1, where n is the fan-out of the split. This rationale is illustrated in Figure 9.
	CFCOR-split(a)= (2 ^ fan-out(a) ) - 1
	This means that when a designer is con- structing a process, he or she needs to consider and analyze 2n-1 states that may 	arise from the execution of an OR-split construct.
	Mathematically, it would appear more obvious that 2n states can be reached after the execution of an OR-split. But since a 	process that has started its execution has to finish, it can- not be the case where, after the execution of an OR-split, no 	transition 	is activated (i.e., no Web service or workflow task is executed. Therefore, this situation or state cannot happen.
		
	"
	|fanout|
	fanout := aModel outgoing size.
	^ ( 2 ** fanout ) - 1