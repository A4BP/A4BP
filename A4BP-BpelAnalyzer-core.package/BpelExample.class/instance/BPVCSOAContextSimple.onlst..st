analitics-example
BPVCSOAContextSimple: v onlst: nodes
	v
		node: 'wsdl'
		forIt: [ 
			v interaction
				popupText: #name;
				action: #inspect.
			v shape rectangle fillColor: Color yellow.
			v
				nodes: nodes
				forEach: [ :p | 
					v shape label.
					v interaction forward.
					v shape rectangle
						withoutBorder;
						fillColor: Color yellow.
					v
						node: 'lstRelations'
						forIt: [ 
							v shape rectangle
								size: 5;
								if: [ :var | var class = BPProcess ] fillColor: Color red;
								if: [ :var | var class = BPPartnerLink ] fillColor: Color blue.
							v nodes: p lstRelations.
							v gridLayout ] ].
			v horizontalLineLayout ]