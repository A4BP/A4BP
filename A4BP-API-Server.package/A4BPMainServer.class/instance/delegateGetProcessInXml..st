delegate
delegateGetProcessInXml: params
	"
		Return the process in xml base on id or name
	"
	|userid key|
	params isEmpty ifTrue:[ ^ self buildErrorRes: 'params is required (userid)' ].
	userid := params at: 'userid' ifAbsent: [ ^ self buildErrorRes: 'userid is required' ].
	key := params at: 'key' ifAbsent: [ ^ self buildErrorRes: 'key is required' ].
	
	^ self buildRes: '' ctype:ZnMimeType any.
	
	