resolving
streamResolveExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	| uri |

	^ (uri := anXMLURIOrURIString asXMLURI) isLocal
		ifTrue: [
			self
				streamResolveLocalExternalEntityURI: uri
				upToLimit: aMaxSize]
		ifFalse: [
			self
				streamResolveNonLocalExternalEntityURI: uri
				upToLimit: aMaxSize]