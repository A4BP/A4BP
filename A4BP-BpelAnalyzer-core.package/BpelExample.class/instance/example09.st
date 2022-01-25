examples
example09
	"
	self new example09
	"
	| v ce soaWorld rel edges |
	soaWorld := SOAContextTest soaWorldBase.
	v := ROView new.
	ce := ROElement forCollection: soaWorld allBPProcess.
	v addAll: ce.
	rel := OrderedCollection new.
	ce
		do: [ :n | 
			n width: n model numberOfActivities.
			n height: n model numberOfVariables.
			n + ROBorder.
			n @ RODraggable.
			n + (ROLabel new text: n model aName).
			BPLog d: n model aName.
			n model allRelations
				do: [ :r | 
					| e |
					e := v elementFromModel: r.
					e ifNotNil: [ rel add: (n -> e) ] ] ].
	edges := ROEdge linesFor: rel.
	v addAll: edges.
	ROTreeLayout new on: v elements.
	v @ ROMiniMap.
	v open
	