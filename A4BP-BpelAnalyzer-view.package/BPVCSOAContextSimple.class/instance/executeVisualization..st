visualization
executeVisualization: view
	| v soa lst1 lst2 i size |
	v := RTMondrian new.
	view @ RTDraggableView.
	v view: view.
	soa := bpObj.
	lst1 := OrderedCollection new.
	lst2 := OrderedCollection new.
	i := 0.
	size := soa lstElements size.
	soa lstBPWSDLs
		do: [ :a | 
			i < (size / 2)
				ifTrue: [ lst1 add: a ];
				ifFalse: [ lst2 add: a ].
			i := i + 1 ].
	self viewWSDLBuilder: v onlst: lst1.
	self viewProcessBuilder: v onlst:soa lstBPProcess.
 	self viewWSDLBuilder: v onlst: lst2.
	soa allBPProcess
		do: [ :p | 
			self addInspect: v.
			v shape line color: (Color gray alpha: 0.4).
			v edges objects: p lstAllActivities from: #yourself to: [ :object | object bpPartnerLink bpwsdl ] ].
	v layout verticalLine