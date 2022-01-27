resolving
resolveEntityURI: aURI from: aSourceURI
	^ self resolveEntityURI:
		(self
			combineSourceURI: aSourceURI
			withEntityURI: aURI)