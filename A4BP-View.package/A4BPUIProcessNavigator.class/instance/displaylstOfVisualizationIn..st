as yet unclassified
displaylstOfVisualizationIn: tabC
	" show as a list the visualization available in the BPVCBuilder list depent of object model selected"

	| aBPVCBuilder |
	aBPVCBuilder := A4BPVCBuilder new.
	tabC list
		title: A4BPUII18n msg msgVisualization;
		display: [ :org |  | dis |
					org class = LinkedList ifTrue: [ dis := org first ]; ifFalse: [ dis := org ].
					[dis accept: aBPVCBuilder ] on: Error do: [  ] ];
		dynamicActionsOnSelection: [ :list |  | act lst |
					lst := OrderedCollection new.
					"view Source"
					act := GLMGenericAction new.
					act action: [ list selection class browse ]; title: A4BPUII18n msg msgSource.
					lst add: act.
					"Open view"
					act := GLMGenericAction new.
					act action: [ list selection view inspect ]; title: A4BPUII18n msg msgOpenView.
					lst add: act.
					
					lst ];
		format: #name.
	^ tabC