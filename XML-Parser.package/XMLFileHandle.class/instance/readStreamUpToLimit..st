reading
readStreamUpToLimit: aMaxSize
	| fileSize |

	self isFile
		ifFalse: [self errorNotAFile].
	
	(fileSize := self fileSize) > 0
		ifFalse: [ ^ '' readStream].
	(aMaxSize notNil and: [fileSize > aMaxSize])
		ifTrue: [self errorFileSize: fileSize exceedsMaxSize: aMaxSize].

	^ self readStreamOnFileOrDo: [:error | XMLFileException signalMessageFrom: error]