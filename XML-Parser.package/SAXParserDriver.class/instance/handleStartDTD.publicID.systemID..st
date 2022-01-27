handling - dtd
handleStartDTD: aRoot publicID: aPublicID systemID: aSystemID
	externalSubsetURI := aSystemID.

	self doctypeDefinition root: aRoot.
	self saxHandler
		startDTD: aRoot
		publicID: aPublicID
		systemID: aSystemID.