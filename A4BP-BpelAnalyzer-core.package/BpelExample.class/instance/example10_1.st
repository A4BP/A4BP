examples
example10_1
	"
	self new example10_1
	"
	| v  soaWorld nwsdl|
	soaWorld := SOAContextTest soaWorldBase.
	"rel := OrderedCollection new."
	"Create de principal object to draw"	
	v := ROMondrianViewBuilder new.
	"generate information to draw for each iteration of nodes"
	v interaction
			popupText: #aName;
			action: #inspect.
	
	v nodes: soaWorld allBPWSDL forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		v node: p aName.
		v shape rectangle withoutBorder.
		v node: 'lstRelations' forIt: [ 
			v shape rectangle 
						size: 10;
						if: [ :var | var class =  BPProcess ] fillColor: Color red;
						if: [ :var | var class = BPPartnerLink] fillColor: Color blue.
			v nodes: p lstRelations.
			v gridLayout ].
		v verticalLineLayout.
	].			
	nwsdl:= v nodes.
	"add the nodes to paint, int this case the node represent the process"
	v nodes: soaWorld allBPProcess forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		v node: p processName.
		v node: 'variables' forIt: [ 
			v shape rectangle 
						size: [ :var | var numberOfInvokes * 15 ].
			v nodes: p variables lstVariables.
			v gridLayout ].
		v node: 'activities' forIt:[
			| |
			v shape circle size:10.
			v interaction 
				action: #inspect;
				dynamicEdgeToAll: [ :object | object isARelationableActivity ifTrue: [ {object bpPartnerLink bpwsdl} ] ifFalse: [ #() ] ] using: ROLine red.
				
			v nodes: p lstActivities .	
			
			v gridLayout.
			].
		"v edgesFrom: soaWorld allBPWSDL."
		v verticalLineLayout.
	].
	"v edges: soaWorld allBPWSDL from: #yourself toAll: soaWorld allBPWSDL."
	v gridLayout.
	v open	