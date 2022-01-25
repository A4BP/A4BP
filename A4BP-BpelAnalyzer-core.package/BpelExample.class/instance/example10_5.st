examples
example10_5
	"
	self new example10_5
	"

	| v soa rel |
	soa := SOAContextTest soaWorldBase.
	rel := OrderedCollection new.	"Create de principal object to draw"
	v := ROMondrianViewBuilder new.	"generate information to draw for each iteration of nodes"
	v gridLayout.
	v
		node: 'bpel'
		forIt: [ 
			v interaction
				popupText: [ :a | '(CFCxNoRel)=(' , a calculateCFC asString , 'x' , a numberOfRelations asString , ')' ];
				action: #inspect.
			v shape rectangle
				height: [ :a | a calculateCFC * 5 ];
				width: [ :a | a numberOfRelations * 5 ].
			v
				nodes: soa allBPProcess
				forEach: [ :p | 
					v shape circle
						size: 1;
						fillColor: (Color blue alpha: 0.3).
					v nodes: p lstActivities.
					v shape circle
						size: 1;
						fillColor: (Color lightGreen alpha: 0.3).
					v nodes: p lstVariables.
					v gridLayout ] ].
	v open