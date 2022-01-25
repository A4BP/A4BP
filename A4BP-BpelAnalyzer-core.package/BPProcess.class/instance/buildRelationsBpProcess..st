build-relations
buildRelationsBpProcess: aRelBpProcess
	|relWithProcess|
	self == aRelBpProcess
		ifTrue: [ ^ self ].	
	"find in my relations if some one have a relation with the supose aRelBpProcess"
	relWithProcess := bpRelations lstRelations select: [ :rel | 
		rel iHaveRelationWith: aRelBpProcess ].
	relWithProcess
		do: [ :rel | 
			self addBpProcessRelation: aRelBpProcess baseOfRel:rel]