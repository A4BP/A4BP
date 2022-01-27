tokenizing - expecting
expectLetter
	| nextChar |

	((nextChar := streamReader next) notNil
		and: [nextChar isLetter])
		ifFalse: [
			self
				errorExpected: 'letter'
				butGot: nextChar].
	^ nextChar.