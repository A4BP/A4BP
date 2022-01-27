instance creation
saxDriver: aSaxDriver documentURI: anExternalSubsetURI
	^ self new
		setSAXDriver: aSaxDriver
		documentURI: anExternalSubsetURI