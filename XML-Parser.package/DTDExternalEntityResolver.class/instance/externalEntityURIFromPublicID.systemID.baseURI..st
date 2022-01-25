resolving
externalEntityURIFromPublicID: aPublicID systemID: aSystemID baseURI: aBaseXMLURIOrURIString
	| baseURI externalEntityURI |

	baseURI := aBaseXMLURIOrURIString asXMLURI.
	externalEntityURI :=
		baseURI combinedWith:
			(self
				externalEntityURIFromPublicID: aPublicID
				systemID: aSystemID).
	(externalEntityURI isLocal
		and: [baseURI isLocal not
			and: [self resolvesLocalFromNonLocal not]])
		ifTrue: [self errorLocalFromNonLocal].

	^ externalEntityURI.