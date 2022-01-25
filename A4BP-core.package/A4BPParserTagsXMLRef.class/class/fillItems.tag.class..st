factory
fillItems: items tag: tag class: objClass
	| ref |
	ref := A4BPParserRefTagClass getRefOnTag: tag objClass: objClass.
	items at: ref key put: ref.