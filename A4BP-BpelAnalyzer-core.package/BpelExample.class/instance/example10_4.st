examples
example10_4
	"
	self new example10_4
	"

	| v soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	v := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
		
	v shape rectangle withoutBorder.
	v
		node: 'list of wsdl'
		forIt: [ 
			v interaction
				action: #inspect;
				popupText: #name.
			v shape rectangle
				size: 30;
				if: [ :var | var class = BPWSDLWsdl ] fillColor: (Color darkGray alpha: 0.3).
			v nodes: soaWorld allBPWSDL.
			v gridLayout ].
	v gridLayout.
	v open