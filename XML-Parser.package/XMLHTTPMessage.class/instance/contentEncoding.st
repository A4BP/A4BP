accessing
contentEncoding
	"Returns the non-identity content encoding compression schemes
	in the order they were applied"

	^ self encodingNamesFromHeaderValuesAt: 'Content-Encoding'