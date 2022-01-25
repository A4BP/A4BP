build-relations
addBpProcessRelation: aRelBpProcess baseOfRel: baseRel
	( bpRelations lstRelations select: [ :rel | rel = baseRel ])
		do: [ :rel | 
			self addRelation: aRelBpProcess.
			aRelBpProcess addRelation: self ].