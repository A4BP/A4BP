restful-post
postAddObject
    self api: '/' method: #POST handler:
    [ :request | | uri |
        uri := '/', (JSONStore size + 1) asString.
        JSONStore at: uri put: (STON fromString: request contents).
        (ZnResponse created: uri)
            entity: (jsonEB value: 'Created ', uri);
            yourself 
	]