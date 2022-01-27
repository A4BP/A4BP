private 
validatorClassForType
	^ NonEnumerationValidators
		at: type
		ifAbsent: [
			type first == $N
				ifTrue: [XMLNotationEnumerationAttributeValidator]
				ifFalse: [XMLEnumerationAttributeValidator]]