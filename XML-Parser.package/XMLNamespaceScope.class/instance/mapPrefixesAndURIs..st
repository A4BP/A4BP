accessing
mapPrefixesAndURIs: anAssociationCollection
	| copiedPrefixMappings |

	anAssociationCollection associationsDo: [:each |
		self
			validatePrefix: each key
			beforeMappingTo: each value.
		(copiedPrefixMappings "used so we only copy once"
			ifNil: [copiedPrefixMappings := self copiedPrefixMappings])
			at: each key
			put: each value]