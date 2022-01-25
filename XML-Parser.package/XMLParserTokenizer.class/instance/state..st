accessing
state: aTokenState
	(state := aTokenState) isContentState
		ifTrue: [elementNester := driver elementNester].
	(driver decodesCharacters
		and: [state supportsEncodingDetection])
		ifTrue: [streamReader detectEncoding].