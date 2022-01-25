build
buildInternalRelations
	super buildInternalRelations.
	shapes do: [ :s | s buildInternalRelations ]