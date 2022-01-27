printing
printAuthorityOn: aStream
	self hasAuthority
		ifTrue: [
			(self hasScheme not
				and: [self hasAuthorityPrefix])
				ifTrue: [aStream nextPutAll: '//'].
			self
				printUserInfoOn: aStream;
				printHostOn: aStream;
				printPortOn: aStream]