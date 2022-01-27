printing
printUserInfoOn: aStream
	self hasUserInfo
		ifTrue: [
			aStream
				nextPutAll: userInfo;
				nextPut: $@]