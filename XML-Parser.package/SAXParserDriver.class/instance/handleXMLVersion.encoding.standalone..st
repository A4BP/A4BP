handling
handleXMLVersion: aVersion encoding: anEncoding standalone: aYesOrNo
	isStandalone := aYesOrNo = 'yes'.

	self saxHandler
		xmlVersion: (self versionFloatFromString: aVersion)
		encoding: anEncoding
		standalone: isStandalone.