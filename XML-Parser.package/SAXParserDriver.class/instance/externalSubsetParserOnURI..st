private
externalSubsetParserOnURI: aURI
	| combinedURI |

	combinedURI :=
		self externalEntityResolver
			combineSourceURI: self documentURI
			withEntityURI: aURI.

	^ self
		externalSubsetParserOn:
			(self externalEntityResolver resolveEntityURI: combinedURI)
		documentURI: combinedURI asString.