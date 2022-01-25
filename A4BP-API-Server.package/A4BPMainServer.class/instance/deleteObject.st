restful-delete
deleteObject
	|handler|
	handler := 
    [ :request | | uri |
        uri := request uri pathPrintString.
        (JSONStore removeKey: uri ifAbsent: [ nil ])
            ifNil: [ ZnResponse notFound: uri ]
            ifNotNil: [ self buildRes:'Deleted'] ].
	self api: '' method: #DELETE handler: handler.
   self api: '/' method: #DELETE handler: handler.