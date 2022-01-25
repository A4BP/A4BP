restful-get
getProcessInXml
    self api: 'process' method: #GET handler:
    [ :req | 
		 	|params|
			"check if the req have require values"
			params := req mergedFields.
		 	self delegateGetProcessInXml: params.
	]