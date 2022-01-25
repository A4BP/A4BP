matching
matchesAttributes: anAttributeDictionary
	"if there's no block, then it automatically matches, similar to an
	XMLBasicAttributeSpec with no attributes"
	block
		ifNil: [^ true]
		ifNotNil: [^ block value: anAttributeDictionary]