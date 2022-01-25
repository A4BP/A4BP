build-relations
findDef: aDef
	| visitor |
	visitor := BPDefFinderVisitor new.
	^ visitor findDef: aDef In: lstRelations