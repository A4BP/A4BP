private 
zincRequest
	^ zincRequest
		ifNil: [
			zincRequest :=
				(XMLClassFinder classNamed: #ZnRequest)
					get: self url]