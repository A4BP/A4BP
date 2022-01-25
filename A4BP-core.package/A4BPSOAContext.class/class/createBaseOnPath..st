create
createBaseOnPath: aPath
	| context |
	context := self new.
	context createBaseOnPath: aPath.
	"for each context like BPEL20 or BPMN20 do the same proces in the base class"
	A4BPSOAContext subclassesDo: [ :soacClass | 
			| soacInstance |
			soacInstance := soacClass new.
			soacInstance createBaseOnPath: aPath.
			context joinContext: soacInstance ].
	context buildRelations.
	^ context