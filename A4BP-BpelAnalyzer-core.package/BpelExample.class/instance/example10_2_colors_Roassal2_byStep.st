examples-Roassal2
example10_2_colors_Roassal2_byStep
	"self new example10_2_colors_Roassal2_byStep"

	| v soaWorld |
	soaWorld := SOAContextTest soaWorldBase.	
		"Create de principal object to draw"
	v := RTMondrian new.	
		"generate information to draw for each iteration of nodes"	
			"---------------------------------------------------------------------------------------------------------------------------"	"------------------------------------------------------BPEL-----------------------------------------------------------------"	
					"---------------------------------------------------------------------------------------------------------------------------"
	v shape rectangle fillColor: Color green.	
		"add the nodes to paint, int this case the node represent the process"
	v
		nodes: soaWorld allBPProcess
		forEach: [ :p | 
			"each process have many of rectangle wich represent information of their state and references"
			v shape circle
				size: 1;
				fillColor: Color red.
			v nodes: p lstVariables.
			v shape rectangle fillColor: Color blue.
			v nodes: p lstAllActivities.	
				"v edgesFrom: soaWorld allBPWSDL."	"layout"
			v gridLayout ].	
			"---------------------------------------------------------------------------------------------------------------------------"	           "------------------------------------------------------WSDL-----------------------------------------------------------------"	
			"---------------------------------------------------------------------------------------------------------------------------"
	v shape rectangle fillColor: Color yellow.
	v
		nodes: soaWorld allBPWSDL
		forEach: [ :p | 
			"each process have many of rectangle wich represent information of their state and references"
			v shape circle
				size: 1;
				fillColor: Color green.
			v nodes: p lstRelations.
			v gridLayout ].
	soaWorld allBPWSDL
		do: [ :w | 
			A4BPLog l: w name.
			A4BPLog l: w hash ].	
			"---------------------------------------------------------------------------------------------------------------------------"	     "------------------------------------------------------add Relations--------------------------------------------------------"	
					"---------------------------------------------------------------------------------------------------------------------------"
	soaWorld allBPProcess
		do: [ :p | 
			v shape line color: (Color gray alpha: 0.4).
			v edges: p lstAllActivities from: #yourself to: [ :obj | obj bpPartnerLink bpwsdl ] ].
	v gridLayout.	
		"Next sentences dont́ work in Roassal2"	"ROEaselMorphic new populateMenuOn: v."
	v open