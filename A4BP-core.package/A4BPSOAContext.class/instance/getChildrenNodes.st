getset
getChildrenNodes
	| lst g unparsers|
	lst := OrderedCollection new.
	g := A4BPElementGroup new.
	g aName:'Process'.
	g addElements:  (self lstElements select:[ :e | e isProcess]).
	lst add: g.
	g := A4BPElementGroup new.
	g aName:'Services'.
	g addElements:  (self lstElements select:[ :e | e isWSDL]).
	lst add: g.
	g := A4BPElementGroup new.
	g aName:'Schemas'.
	g addElements:  (self lstElements select:[ :e | e isSchema]).
	lst add: g.
	
	unparsers := (self lstElements select:[ :e | e isUnparseObj]).

	unparsers size > 0 ifTrue:[	
		g := A4BPElementGroup new.
		g aName:'Unparse Elements'.
		g addElements: unparsers .
		lst add: g.
	].
	
	^ lst