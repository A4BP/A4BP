reading
readFrom: aStream withBase: aFirstBase andPrefixes: aCharacterCollection orBase: aSecondBase upToLimit: aReadLimit
	^ (self on: aStream)
		nextIntegerWithBase: aFirstBase
		andPrefixes: aCharacterCollection
		orBase: aSecondBase
		upToLimit: aReadLimit