build-relations
findDefBPVariableType: aDef
	| ns |
	"find the namespace of the definition"
	ns := nsNameSpaces at: aDef prefix.
	aDef nameSpace: ns.
	^ bpRelations findDef: aDef