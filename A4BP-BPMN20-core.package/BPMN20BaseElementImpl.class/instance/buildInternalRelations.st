builder
buildInternalRelations
	super buildInternalRelations.
	self childrens do: [ :node | node buildInternalRelations ].