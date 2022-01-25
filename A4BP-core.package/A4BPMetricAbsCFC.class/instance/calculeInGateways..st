as yet unclassified
calculeInGateways: aModel
	"
	CFC (P) = abs
	( ∑ CFCXOR−split i) + i∈(XOR-splits of P)
	( ∑ CFCOR−split j)+ j∈(OR-splits of P)
	( ∑ CFCAND−split k)+ k∈(AND-splits of P)
	"
	| cfc |
	cfc := cfcMetric calculeCFC: aModel.
	aModel outgoing do: [ :el | cfc := cfc + (el accept: self) ].
	^ cfc