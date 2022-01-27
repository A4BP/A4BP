tokenizing - expecting
expectNextAll: anExpectedLiteral
	1 to: anExpectedLiteral size do: [:i | | nextChar |
		(nextChar := streamReader next) == (anExpectedLiteral at: i)
			ifFalse: [
				self
					errorExpectedLiteral: anExpectedLiteral
					butGot: nextChar
					at: i]].
	^ anExpectedLiteral.