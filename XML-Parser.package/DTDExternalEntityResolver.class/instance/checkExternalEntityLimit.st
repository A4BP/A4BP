private
checkExternalEntityLimit
	(self maxExternalEntities notNil
		and: [self totalResolvedEntities + 1 > self maxExternalEntities])
		ifTrue: [self erorrExternalEntityLimitExceeded]