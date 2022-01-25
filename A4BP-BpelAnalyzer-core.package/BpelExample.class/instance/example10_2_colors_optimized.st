examples
"protocol: examples"
example10_2_colors_optimized
	"
	self new example10_2_colors_optimized
	"
	| v  soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	"rel := OrderedCollection new."
	"Create de principal object to draw"	
	v := ROMondrianViewBuilder new.
	"generate information to draw for each iteration of nodes"
	
	
	"-----------------------------------------------------------------------------"
	"--------BPEL-----------------------------------------------------------------"
	"-----------------------------------------------------------------------------"
	v interaction
			popupText: #name;
			action: #inspect.

	v node:'process' forIt:[
	v shape rectangle fillColor:Color green.
		"add the nodes to paint, int this case the node represent the process"
	v nodes: soaWorld allBPProcess forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		v node: p name.
		v shape circle size:10;fillColor:Color red.
		v nodes: p variables lstVariables.
		v shape rectangle size:10;fillColor:Color blue.
		v nodes: p lstAllActivities forEach:[
			v shape circle size:10.
			v interaction 
				action: #inspect;
				dynamicEdgeToAll: [ :object | 
					object isARelationableActivity 
					ifTrue: [ {object bpPartnerLink bpwsdl} ] 
					ifFalse: [ #() ] 
				] using: ROLine red
		].
		v gridLayout.
	].
		v verticalLineLayout.
	].
	
			
	"-----------------------------------------------------------------------------"
	"--------WSDL-----------------------------------------------------------------"
	"-----------------------------------------------------------------------------"
	v interaction
			popupText: #name;
			action: #inspect.
	v node:'wsdl' forIt:[
	v shape rectangle fillColor:Color yellow.
	v nodes: soaWorld allBPWSDL forEach: [ :p |
		v shape label.
		v node: p name.
		"each process have many of rectangle wich represent information of their state and references"
		v shape circle size:1;fillColor:Color green.
		v nodes: p lstRelations.
		v gridLayout 
	].
	v verticalLineLayout.
	].

	soaWorld allBPProcess do: [ :p |
		v shape line color: (Color red alpha: 0.4);size:2.
		v edges: p lstAllActivities  from: #yourself to: [ :act | act bpPartnerLink bpwsdl ] ] . 
	
	"v edges: soaWorld allBPWSDL from: #yourself toAll: soaWorld allBPWSDL."
	v gridLayout.
	ROEaselMorphic new populateMenuOn: v.
	v open	