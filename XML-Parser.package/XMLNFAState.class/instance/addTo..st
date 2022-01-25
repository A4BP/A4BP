adding
addTo: aStateSet
	lastAddedTo == aStateSet
		ifFalse: [
			"to detect and handle cycles"
			lastAddedTo := aStateSet.

			aStateSet add: self]