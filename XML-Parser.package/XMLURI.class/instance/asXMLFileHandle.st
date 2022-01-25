converting
asXMLFileHandle
	self isLocal
		ifFalse: [self errorCannotConvertURIToFileHandle].
	^ self path asXMLFileHandle.