visualization
executeVisualization: view
	| v soa lst1 lst2 i size |
	v := self buildView:view.
	"self addInspect: v."
	soa := bpObj.
	lst1 := OrderedCollection new.
	lst2 := OrderedCollection new.
	i := 0.
	size := soa wsdls size.
	lst1 := soa wsdls values copyFrom: 1 to: size // 2.
	lst2 := soa wsdls values copyFrom: size // 2 to: size - 1.
	self viewWSDLBuilder: v onlst: lst1.
	self viewProcessBuilder: v onlst: soa process.
	self viewWSDLBuilder: v onlst: lst2.
	v layout vertical.
	v build.
	soa process
		do: [ :p | 
			v shape arrowedLine color: Color gray.
			v lines objects: p allActivities; connectFrom: #yourself toAll: [ :object | object relations ] ].
	self addLegendBuilderView: view values: soa allNodes