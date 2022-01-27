resolving
resolveEntityURI: aURI
	| readStream |

	self checkExternalEntityLimit.
	readStream := aURI asXMLURI getUpToLimit: self maxExternalEntitySize.
	self incrementEntityTotal.

	^ readStream.