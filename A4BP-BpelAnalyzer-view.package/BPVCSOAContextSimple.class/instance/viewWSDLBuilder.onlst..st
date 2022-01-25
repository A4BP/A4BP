view
viewWSDLBuilder: v onlst: nodes
	self addInspect: v.
	v
		node: 'wsdl'
		forIt: [ 
			v shape rectangle fillColor: Color yellow.
			v
				nodes: nodes
				forEach: [ :p | 
					v shape label.
					v shape rectangle;
						fillColor: Color yellow.
					v
						node: 'lstRelations'
						forIt: [ 
							v shape rectangle
								size: 5;
								if: [ :var | var class = BPProcess ] fillColor: Color red;
								if: [ :var | var class = BPPartnerLink ] fillColor: Color blue.
							v nodes: p lstRelations.
							v layout grid ] ].
			v layout horizontalLine ]