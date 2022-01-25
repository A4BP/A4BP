build-relations
buildMeRelations
	"Message to start to build my relations into my elements and my types"

	lstElements do: [ :el | el buildMeRelations ].