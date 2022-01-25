private 
zincClient
	^ zincClient
		ifNil: [
			zincClient :=
				(XMLClassFinder classNamed: #ZnClient) new
					streaming: true;
					yourself]