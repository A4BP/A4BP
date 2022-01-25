as yet unclassified
displayVisualizationIn: finderComposite
	| tab |
	tab := finderComposite tabulator.
	tab title:A4BPUII18n msg msgVisualization.
	tab titleIcon: Smalltalk ui icons glamorousInspect.
	tab
		column: #lstOfViz span:2;
		column: #theview span:6.
	tab transmit
		to: #lstOfViz;
		andShow: [ :aa | self displaylstOfVisualizationIn: aa ].
	tab transmit
		to: #theview;
		from: #lstOfViz;
		andShow: [ :glmc :viewBuilder | 
					(glmc ~= nil and: viewBuilder ~= nil)
						ifTrue: [ 
							viewBuilder executeVisualizationOnGLMC: glmc.
							glmc text 
							title: 'Code';
							display: [ :dis | 
								|method|
								method := viewBuilder class methods 
								select:[:m | m selector = #executeVisualization:].
								method := method first.
								method asString
								];
							allowNil.
						] 
		]	"glmc-> glamourComposite"