validating
validateAndResolvePrefix: aPrefix ofAttribute: anAttribute
	"performance critical method"
	aPrefix size > 0 "optimization"
		ifTrue: [
			^ self
				prefixMappingAt: aPrefix
				ifAbsent: [
					aPrefix = 'xml'
						ifTrue: [self xmlNamespaceURI]
						ifFalse: [					
							aPrefix = 'xmlns'
								ifTrue: [
									"this can't happen during parsing, because
									'xmlns' attributes are treated as namespace
									declarations, but it can happen through DOM tree
									manipulation, for example:
										attributeNode prefix: 'xmlns'
									"
									self errorXMLNSPrefixInAttribute: anAttribute]
								ifFalse: [
									self
										errorUnmappedPrefix: aPrefix
										inAttribute: anAttribute]]]]
		ifFalse: [
			"catch names like ':name' with an empty prefix"
			(anAttribute size > 0
				and: [(anAttribute at: 1) == $:])
				ifTrue: [self errorInvalidUnprefixedAttribute: anAttribute].
			^ '']