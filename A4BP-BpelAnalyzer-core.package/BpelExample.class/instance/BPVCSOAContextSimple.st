analitics-example
BPVCSOAContextSimple
	"
	self new BPVCSOAContextSimple
	"

	| v soa rel lst1 lst2 i size| 
	soa := SOAContextTest soaWorldBase.
	rel := OrderedCollection new.	"Create de principal object to draw"
	v := RTMondrian new.	"generate information to draw for each iteration of nodes"
	
	lst1:=OrderedCollection new.	
	lst2:=OrderedCollection new.	
	i:=0.
	size :=soa lstElements size.
	soa lstBPWSDLs do:[:a| (i < (size / 2 )) ifTrue:[lst1 add: a];ifFalse:[lst2 add: a]. i:=i+1].
	
	self BPVCSOAContextSimple: v onlst: lst1. 
		
	v
		node: 'bpel'
		forIt: [ 
			"---------------------------------------------------------------------------------------------------------------------------"
			"------------------------------------------------------BPEL-----------------------------------------------------------------"
			"---------------------------------------------------------------------------------------------------------------------------"
			v interaction
				popupText: #name;
				action: #inspect.
			v shape rectangle fillColor: Color green.	"add the nodes to paint, int this case the node represent the process"
			v
				nodes: soa allBPProcess
				forEach: [ :p | 
					v
						node: 'variables'
						forIt: [ 
							v shape rectangle size: [ :var | var numberOfInvokes ].
							v nodes: p variables.
							v layout grid ].
					v
						node: 'activities'
						forIt: [ 
							v shape circle size: 10.
							v nodes: p lstActivities.
							v layout verticalLine ] ] ].
				
	self BPVCSOAContextSimple: v onlst: lst2. 
	soa allBPProcess
		do: [ :p | 
			v shape line color: (Color gray alpha: 0.4).
			v edges: p lstActivities from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] ].	
	v layout verticalLine .
	v open