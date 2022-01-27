private
readStreamOnFileOrDo: aBlock
	^ [XMLFileReadStreamFactory on: path]
		on: Error
		do: aBlock