examples
"protocol: examples"
example10_3_matrix
	"self new example10_3_matrix"
	| v  soaWorld nwsdl|
	soaWorld := SOAContextTest soaWorldBase.
	"rel := OrderedCollection new."
	"Create de principal object to draw"	
	v := RTMondrian new.
	"generate information to draw for each iteration of nodes"
	v interaction
			popupText: #aName;
			action: #inspect.
	
	"---------------------------------------------------------------------------------------------------------------------------"
	"------------------------------------------------------WSDL-----------------------------------------------------------------"
	"---------------------------------------------------------------------------------------------------------------------------"

	v shape rectangle fillColor:Color yellow.
	v nodes: soaWorld allBPWSDL forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		"v node: p aName."
		v interaction forward.
		v shape rectangle withoutBorder.
		v node: 'lstRelations' forIt: [ 
			v shape rectangle 
						size: 5;
						if: [ :var | var class =  BPProcess ] fillColor: Color red;
						if: [ :var | var class = BPPartnerLink] fillColor: Color blue.
			v nodes: p lstRelations.
			v gridLayout ].
		v horizontalLineLayout.
	].
	
	"---------------------------------------------------------------------------------------------------------------------------"
	"------------------------------------------------------BPEL-----------------------------------------------------------------"
	"---------------------------------------------------------------------------------------------------------------------------"


	v shape rectangle fillColor:Color green.
	nwsdl:= v nodes.
	
	"add the nodes to paint, int this case the node represent the process"
	v nodes: soaWorld allBPProcess forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		"v shape label."
		"v node: p processName."
		v node: 'variables' forIt: [ 
			v shape rectangle size: [ :var | var numberOfInvokes ].
			v nodes: p variables lstVariables .
			v gridLayout ].
		v node: 'lstActivities' forIt:[
			|lstAct lstwsdl|
			v shape circle size:10.
			v interaction 
				action: #inspect;
				dynamicEdgeToAll: [ :object | object isARelationableActivity ifTrue: [ {object bpPartnerLink bpwsdl} ] ifFalse: [ #() ] ] using: RTLine red
				"on: ROMouseEnter do: [ :evt | 
					(evt model isARelationableActivity) 
						ifTrue: [ ROBlink on: (v elementFromModel: evt model bpPartnerLink bpwsdl) ] ]".
				
			v nodes: p lstActivities .	
			lstAct:= p lstActivities select: [ :act | act isARelationableActivity].
			lstwsdl:=(lstAct collect:[ :act | act bpPartnerLink bpwsdl]).
			A4BPLog d: p aName.
			A4BPLog d: lstwsdl.
			v edgesFrom: lstwsdl.
			v edgesFrom: nwsdl.
			v edges: p lstActivities from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] .   
			v edges: p lstActivities from: #yourself toAll: nwsdl .  
			"v edges: p lstActivities from: #yourself to: 1 ."
			v edge: 1 toAll: p lstActivities.
			v edge: 1 toAll: lstwsdl. 
			"v edgesFromAssociations: (lstwsdl select:[:w| (w = BPEmptyObj instance ) not ])."
			v edge: 1 toAll:nwsdl.
			v horizontalLineLayout.
			].
		"v edgesFrom: soaWorld allBPWSDL."
		v verticalLineLayout.
	].

	soaWorld allBPProcess do: [ :p | 
		v shape line color: (Color gray alpha: 0.4).
		v edges: p lstActivities  from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] ] . 
	
	"v edges: soaWorld allBPWSDL from: #yourself toAll: soaWorld allBPWSDL."
	"v circleLayout."
	"ROEaselMorphic new populateMenuOn: v."
	v open	