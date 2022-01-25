examples
example05
	"
	self new example05
	"
	| soaWorld view rawView |
	soaWorld := SOAContextTest soaWorldBase.
	rawView := ROView new.
	view := ROMondrianViewBuilder view: rawView.
	view interaction
		popupText: #processName;
		action: #inspect.
	view
		nodes: soaWorld allBPProcess
		forEach: [ :p | 
			view node: ''.
			view edgesFrom: p ].
	view edgesFrom: [ :p | p allRelations ].
	view circleLayout.
	ROEaselMorphic new populateMenuOn: view.
	view open