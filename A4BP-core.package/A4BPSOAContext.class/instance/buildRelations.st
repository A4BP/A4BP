creator
buildRelations
	lstElements copy do: [ :e1 | lstElements do: [ :e2 | e1 buildRelations: e2 ] ].