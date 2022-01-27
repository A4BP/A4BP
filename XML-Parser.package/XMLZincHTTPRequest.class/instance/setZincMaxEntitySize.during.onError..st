private
setZincMaxEntitySize: aMaxSize during: aDuringBlock onError: anErrorBlock
	^ [(Smalltalk at: #ZnMaximumEntitySize)
		value: aMaxSize
		during: [
			"value:during: doesn't return during block on gemstone"
			^ aDuringBlock value]]
		on: Error
		do: anErrorBlock