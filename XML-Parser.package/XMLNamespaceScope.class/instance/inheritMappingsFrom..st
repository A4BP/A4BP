accessing
inheritMappingsFrom: anEnclosingScope
	anEnclosingScope hasNamespaces
		ifFalse: [^ self].
	self hasNamespaces
		ifTrue: [| copiedPrefixMappings |
			anEnclosingScope prefixesAndURIsDo: [:prefix :uri |
				(self includesPrefix: prefix)
					ifFalse: [
						(copiedPrefixMappings "used so we only copy once"
							ifNil: [copiedPrefixMappings := self copiedPrefixMappings])
							at: prefix
							put: uri]]]
		ifFalse: [
			"can reuse because of copy-on-write"
			prefixMappings := anEnclosingScope prefixMappings].