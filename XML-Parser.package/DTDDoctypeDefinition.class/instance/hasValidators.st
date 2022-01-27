testing
hasValidators
	^ (attributeValidators notNil
		and: [attributeValidators notEmpty])
			or: [elementValidators notNil
				and: [elementValidators notEmpty]]