visitor
buildInternalRelations
	"super call is to send a message for my children to build their relations"
	super buildInternalRelations.
	self a4bpRefsToBuilder do: [ :link | self findElementAndDoRelation: link ]