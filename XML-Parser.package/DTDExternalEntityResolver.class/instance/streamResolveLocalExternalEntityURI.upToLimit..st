private
streamResolveLocalExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	"return our own decoding adapter on the raw, undecoded stream
	to avoid looking for any byte-order mark until later"
	^ XMLDecodingReadStreamAdapter nonDecodingOn:
		(anXMLURIOrURIString asXMLFileHandle
			streamGetUpToLimit: aMaxSize
			decoding: false)