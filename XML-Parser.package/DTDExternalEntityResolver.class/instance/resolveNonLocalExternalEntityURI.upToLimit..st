private
resolveNonLocalExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	| response |

	response :=
		anXMLURIOrURIString asXMLHTTPRequest
			resolveUpToLimit: aMaxSize
			decoding: false.

	"saves the undecoded replacement with its Content-Type
	charset encoding tag for later decoding (if needed)"
	^ DTDUndecodedResolvedExternalParsedEntityReplacement
		rawContents: response content
		encoding: response contentCharset.