factory
setEmptyObj: items
	items add: (A4BPParserRefTagClass getRefOnTag: A4BPEmptyObj name asString objClass: A4BPEmptyObj).
	^ items