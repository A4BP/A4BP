entity replacing
constructReplacementForLiteralContextEntity: anEntity
	| wasEscapingQuotes |

	wasEscapingQuotes := streamReader isEscapingQuotes.
	self
		pushBackEntity: anEntity
		onClose: [streamReader isEscapingQuotes: wasEscapingQuotes].

	"wait till after the text declaration was read to start escaping"
	(self currentActiveEntity == anEntity
		and: [wasEscapingQuotes not])
		ifTrue: [streamReader isEscapingQuotes: true].