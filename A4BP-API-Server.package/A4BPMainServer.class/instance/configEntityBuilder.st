config
configEntityBuilder
	jsonEB := [ :object |
	|result|
	result := ((String streamContents: [ :stream |
                    STON jsonWriter on: stream; prettyPrint: true; nextPut: object.
                    stream cr ])
                        replaceAll: Character cr with: Character lf).
   ZnEntity 
        with: result
        type: ZnMimeType applicationJson ].