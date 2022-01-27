printing
printSchemeOn: aStream
	self hasScheme
		ifTrue: [
			aStream 
				nextPutAll: scheme;
				nextPut: $:.
			self hasAuthorityPrefix
				ifTrue: [aStream nextPutAll: '//']]