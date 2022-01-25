analitics-example
processRelationAndCFC
	"self new processRelationAndCFC"
	| v ce soaWorld rel edges |
	soaWorld := SOAContextTest soaWorldBase.
	v := RTView new.
	ce := RTElement forCollection: soaWorld allBPProcess.
	v addAll: ce.
	rel := OrderedCollection new.
	ce
		do: [ :n | 
			n width: n model calculateCFC.
			n height: n model numberOfVariables.
			n @ RTDraggable.
			"n + (ROLabel new text: n model aName)."

			n model allInvokes
				do: [ :r | 
					| e |
					e := v elementFromModel: r.
					e ifNotNil: [ rel add: (n -> e) ] ] ].
	edges := (RTEdge linesFor: rel) do:[ :ed | ed+ (RTLine new)].
	v addAll: edges.
	RTTreeLayout new on: v elements.
	v open
	