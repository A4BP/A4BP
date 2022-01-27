resolving
resolvePrefix: aPrefix ifUnresolvable: aBlock
	"resolve namespace from prefix"
	^ self
		prefixMappingAt: aPrefix
		ifAbsent: [
			aPrefix = 'xml'
				ifTrue: [self class xmlNamespaceURI]
				ifFalse: [
					aPrefix = 'xmlns'
						ifTrue: [self class xmlnsNamespaceURI]
						ifFalse: [aBlock value]]]