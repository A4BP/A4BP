finder
findElementById: aId
	[ ^ elementsDictionary at: aId ]
		on: Error
		do: [ ^ A4BPEmptyObj instance ]