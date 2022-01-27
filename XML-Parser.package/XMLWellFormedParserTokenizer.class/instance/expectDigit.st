tokenizing - expecting
expectDigit
	| nextChar |

	((nextChar := streamReader next) notNil
		and: [nextChar isDigit])
		ifFalse: [
			self
				errorExpected: 'digit'
				butGot: nextChar].
	^ nextChar.