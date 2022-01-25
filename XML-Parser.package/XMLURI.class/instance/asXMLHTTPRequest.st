converting
asXMLHTTPRequest
	(self isHTTP
		or: [self isHTTPS
			or: [self isRelative]])
		ifFalse: [self errorCannotConvertURIToHTTPRequest].
	^ self asString asXMLHTTPRequest.