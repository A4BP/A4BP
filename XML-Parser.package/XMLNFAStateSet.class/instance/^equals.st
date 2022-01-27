comparing
= anObject
	^ self == anObject
		or: [self class == anObject class
			and: [set = anObject set]]