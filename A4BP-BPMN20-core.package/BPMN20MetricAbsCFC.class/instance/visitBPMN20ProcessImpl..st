as yet unclassified
visitBPMN20ProcessImpl: aModel
	"
	CFC (P) = abs
	( ∑ CFCXOR−split i) + i∈(XOR-splits of P)
	( ∑ CFCOR−split j)+ j∈(OR-splits of P)
	( ∑ CFCAND−split k)+ k∈(AND-splits of P)
	"

	| cfcAbs |
	cfcAbs := 0.
	aModel flowElements do: [ :el | cfcAbs := cfcAbs + (el accept: self) ].
	^ cfcAbs