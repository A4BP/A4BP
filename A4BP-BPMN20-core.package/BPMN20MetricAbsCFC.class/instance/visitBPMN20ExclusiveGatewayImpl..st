as yet unclassified
visitBPMN20ExclusiveGatewayImpl: aModel
	"
	(Cardoso 2008)
	XOR-split control-flow complexity is determined by the number of mental states that are introduced with this type of split. 
	The function CFCXOR-split(a), where a is an activity, computes the control-flow complexity of the XOR-split a. 
	For XOR-splits, the control-flow complexity is simply the fan-out of the split.
	===================
	CFCXOR-split(a)= fan-out(a)
	===================	
	In this particular case, the complexity is directly proportional to the number of activities that follow an XOR-split and that a 	process de- signer needs to consider, analyze, and assimilate. The idea is to associate the complexity of an XOR-split with the 	number of states (e.g., activi- ties, tasks, Web services) that follow the split. This rationale is illustrated in Figure 8. Please 	note that in this first case, the computation and result bear a strong similarity to the MCC.
	"
	^ aModel outgoing size