reading
nextIntegerWithBase: aFirstBase andPrefixes: aCharacterCollection orBase: aSecondBase upToLimit: aReadLimit
	^ self
		nextIntegerWithBase:
			((self atEnd not
				and: [aCharacterCollection includes: self peek])
				ifTrue: [
					self next.
					aFirstBase]
				ifFalse: [aSecondBase])
		upToLimit: aReadLimit