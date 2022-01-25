comparing
= anObject
	self == anObject
		ifTrue: [^ true].

	self species == anObject species
		ifFalse: [^ false].

	^ self mainType = anObject mainType
		and: [self subType = anObject subType
			and: [self parameters size = anObject parameters size
				and: [
					"order is irrelevant according to the spec"
					self parameters asSet = anObject parameters asSet]]].