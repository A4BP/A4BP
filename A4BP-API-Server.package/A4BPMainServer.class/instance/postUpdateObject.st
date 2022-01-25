restful-post
postUpdateObject
    self api: 'bpmn' method: #PUT handler:
    [ :request | | uri |
        uri := request uri pathPrintString.
        (JSONStore includesKey: uri)
            ifTrue: [
                JSONStore at: uri put: (STON fromString: request contents).
					self buildRes: 'Updated'.
				]
            ifFalse: [ ZnResponse notFound: uri ] ]