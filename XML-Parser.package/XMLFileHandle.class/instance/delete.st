deleting
delete
	self deleteFileOrDo: [:error | XMLFileException signalMessageFrom: error]