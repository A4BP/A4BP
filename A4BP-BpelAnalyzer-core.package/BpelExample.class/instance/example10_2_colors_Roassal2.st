examples-Roassal2
example10_2_colors_Roassal2
	"self new example10_2_colors_Roassal2"
	"this example produce high effort to process"
	| v  soaWorld |
	soaWorld := SOAContextTest soaWorldBase.
	"rel := OrderedCollection new."
	"Create de principal object to draw"	
	v := RTMondrian new.
	"generate information to draw for each iteration of nodes"
	
	
	"---------------------------------------------------------------------------------------------------------------------------"
	"------------------------------------------------------BPEL-----------------------------------------------------------------"
	"---------------------------------------------------------------------------------------------------------------------------"


	v shape rectangle fillColor:Color green.
	
	"add the nodes to paint, int this case the node represent the process"
	v nodes: soaWorld allBPProcess forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		"v shape label."
		"v node: p processName."
		v nodes: 'variables' forEach: [ 
			v shape rectangle size: [ :var | var numberOfInvokes ].
			v nodes: p variables lstVariables .
			v gridLayout ].
		v nodes: 'activities' forEach:[
			|lstAct lstwsdl|
			v shape circle size:10.
			v nodes: p lstActivities.	
			lstAct:= p lstActivities select: [ :act | act isARelationableActivity].
			lstwsdl:=(lstAct collect:[ :act | act bpPartnerLink bpwsdl]).
			v edgesFrom: lstwsdl.
			v horizontalLineLayout.
			].
		"v edgesFrom: soaWorld allBPWSDL."
		v verticalLineLayout.
	].
	
			
	"---------------------------------------------------------------------------------------------------------------------------"
	"------------------------------------------------------WSDL-----------------------------------------------------------------"
	"---------------------------------------------------------------------------------------------------------------------------"

	v shape rectangle fillColor:Color yellow.
	v nodes: soaWorld allBPWSDL forEach: [ :p |
		"each process have many of rectangle wich represent information of their state and references"
		v shape label.
		"v node: p aName."
		"v shape rectangle withoutBorder."
		v nodes: 'lstRelations' forEach: [ 
			v shape rectangle 
						size: 5;
						if: [ :var | var class =  BPProcess ] fillColor: Color red;
						if: [ :var | var class = BPPartnerLink] fillColor: Color blue.
			v nodes: p lstRelations.
			v gridLayout ].
		v verticalLineLayout.
	].

	soaWorld allBPProcess do: [ :p | 
		v shape line color: (Color gray alpha: 0.4).
		v edges: p lstActivities from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] ] . 
	
	v clusterLayout.
	"Next sentences dont́ work in Roassal2"
	"ROEaselMorphic new populateMenuOn: v."
	v open	