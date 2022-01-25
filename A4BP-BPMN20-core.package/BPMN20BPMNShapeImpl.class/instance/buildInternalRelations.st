build
buildInternalRelations
	super buildInternalRelations.
	[
	"bpmnElement ='Id_c7f06a85-b3f5-442a-af1f-c866fe040817' ifTrue:[ self halt]."
	bpmnElement := myRoot elementAt: bpmnElement.
	bpmnElement shape: self.
	] on: Error do:[].
	
	bounds buildInternalRelations