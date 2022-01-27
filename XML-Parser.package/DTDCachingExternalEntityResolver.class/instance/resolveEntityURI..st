resolving
resolveEntityURI: aURI
	| uri |

	^ (uri := aURI asXMLURI) isLocalURI
		ifTrue: [super resolveEntityURI: uri]
		ifFalse: [
			(self class
				entityCacheAt: uri
				ifAbsentPut: [(super resolveEntityURI: uri) contents])
					readStream]