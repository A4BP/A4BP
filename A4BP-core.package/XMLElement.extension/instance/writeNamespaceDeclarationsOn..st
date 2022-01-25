*A4BP-core
writeNamespaceDeclarationsOn: tagWriter
	self namespaceScope prefixMappings keysAndValuesDo:[ :k :n |
		tagWriter xmlnsAt: k put: n ].
	^ tagWriter.
