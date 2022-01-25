finding
findSupportedImplementation
	self canBeImplemented
		ifTrue: [
			self isSupportedImplementation
				ifTrue: [^ self].

			(self preferredImplementation notNil
				and: [self preferredImplementation isSupportedImplementation])
				ifTrue: [^ self preferredImplementation].
			self allSubclassesDo: [:each |
				each isSupportedImplementation
					ifTrue: [^ each]]].

	^ nil.