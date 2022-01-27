writing
writeStream
	^ self writeStreamOnFileOrDo: [:error | XMLFileException signalMessageFrom: error]