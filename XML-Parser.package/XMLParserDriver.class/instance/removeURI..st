accessing
removeURI: aURI
	"remove: removes the first match"
	self uris removeAt:
		(self uris
			lastIndexOf: aURI
			ifAbsent: [^ self])