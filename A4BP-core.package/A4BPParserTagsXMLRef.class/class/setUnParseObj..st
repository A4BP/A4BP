factory
setUnParseObj: items
	items add: (A4BPParserRefTagClass getRefOnTag: A4BPUnParserObj name asString objClass: A4BPUnParserObj).
	^ items