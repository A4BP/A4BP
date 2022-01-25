builder
fillElementsIn: aBPObj from: document
	aBPObj namespace: (document attributeAt: BPBPELParserTagsXMLRef atrNamespace).
	aBPObj schemaLocation: (document attributeAt: BPBPELParserTagsXMLRef atrSchemaLocation).
	^ aBPObj