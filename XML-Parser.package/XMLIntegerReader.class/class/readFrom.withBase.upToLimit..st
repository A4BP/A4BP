reading
readFrom: aStream withBase: aBase upToLimit: aReadLimit
	^ (self on: aStream)
		nextIntegerWithBase: aBase
		upToLimit: aReadLimit