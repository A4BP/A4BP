private
zincResponse
	^ zincResponse
		ifNil: [
			zincResponse :=
				(XMLClassFinder classNamed: #ZnResponse) new
					statusLine:
						((ZnStatusLine code: self defaultStatusCode)
							version: self defaultProtocol;
							yourself);
					yourself]