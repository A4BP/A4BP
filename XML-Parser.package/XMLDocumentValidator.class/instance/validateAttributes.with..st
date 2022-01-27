validating
validateAttributes: anAttributeDictionary with: aValidatorDictionary
	| unvalidatedAttributes |

	unvalidatedAttributes := Set new: anAttributeDictionary size.
	anAttributeDictionary keysDo: [:each | unvalidatedAttributes add: each].
	aValidatorDictionary
		ifNotNil: [
			aValidatorDictionary keysAndValuesDo: [:attribute :validator |
				validator validateAttributes: anAttributeDictionary.
				unvalidatedAttributes
					remove: attribute
					ifAbsent: nil]].

	unvalidatedAttributes isEmpty
		ifFalse: [self unvalidatedAttributes: unvalidatedAttributes].