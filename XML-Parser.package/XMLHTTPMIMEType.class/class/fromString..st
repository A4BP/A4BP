instance creation
fromString: aString
	| parser |

	parser := XMLHTTPMIMETypeParser on: aString.
	^ self new
		setMainType: parser parseMainType
		subType: parser parseSubType
		parameters: parser parseParameters.