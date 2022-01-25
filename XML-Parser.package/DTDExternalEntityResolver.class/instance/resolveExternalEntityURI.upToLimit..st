resolving
resolveExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	| uri |

	^ (uri := anXMLURIOrURIString asXMLURI) isLocal
		ifTrue: [
			self
				resolveLocalExternalEntityURI: uri
				upToLimit: aMaxSize]
		ifFalse: [
			self
				resolveNonLocalExternalEntityURI: uri
				upToLimit: aMaxSize]