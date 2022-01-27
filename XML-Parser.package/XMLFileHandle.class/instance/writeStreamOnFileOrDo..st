private
writeStreamOnFileOrDo: aBlock
	^ [XMLFileWriteStreamFactory on: path]
		on: Error
		do: aBlock