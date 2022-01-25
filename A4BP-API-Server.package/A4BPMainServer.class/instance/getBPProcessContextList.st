restful-get
getBPProcessContextList
    self api: 'ctx' method: #GET handler:
    [ :req | 
		 	|params|
			"check if the req have require values"
			params := req mergedFields.
		 	self delegateBPProcessContexList: params.
	]